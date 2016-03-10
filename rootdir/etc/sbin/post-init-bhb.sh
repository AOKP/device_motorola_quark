#!/sbin/busybox sh
#script init pull from neobuddy89 github

# Mount root as RW to apply tweaks and settings
mount -o remount,rw /;
mount -o rw,remount /system

# Make tmp folder
if [ -e /tmp]; then
	echo "tmp already exist"
else
mkdir /tmp;
fi

# Give permissions to execute
chown -R root:system /tmp/;
chmod -R 777 /tmp/;
chmod 6755 /sbin/*;
chmod 6755 /system/xbin/*;
echo "BHB Boot initiated on $(date)" > /tmp/bootcheck-bhb;

# Tune LMK with values we love
#echo "1536,2048,4096,16384,28672,32768" > /sys/module/lowmemorykiller/parameters/minfree
#echo 32 > /sys/module/lowmemorykiller/parameters/cost

#enable, disable and tweak some features of the kernel by default for better performance vs battery

# Thremal - Disable msm core cotrol it doesnot work with intellitermal
echo 0 > /sys/module/msm_thermal/core_control/enabled

# CPU - Disable hotplug boost
echo 0 > /sys/module/cpu_boost/parameters/hotplug_boost

# CPU - set max clock to sotck value
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo 2649600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq
echo 2649600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_max_freq

chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq
echo 2649600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_max_freq

chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq
echo 2649600 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_max_freq

# CPU - Set umbrela_core as CPU_GOV 
chmod 644 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo umbrella_core > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

echo 1 > /sys/devices/system/cpu/cpu1/online
chmod 644 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor
echo umbrella_core > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu1/cpufreq/scaling_governor

echo 1 > /sys/devices/system/cpu/cpu2/online
chmod 644 /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor
echo umbrella_core > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu2/cpufreq/scaling_governor

echo 1 > /sys/devices/system/cpu/cpu3/online
chmod 644 /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor
echo umbrella_core > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
chmod 444 /sys/devices/system/cpu/cpu3/cpufreq/scaling_governor

# Wake - enable dt2w and s2w by default
echo 1 > /sys/android_touch2/doubletap2wake
echo 5 > /sys/android_touch2/sweep2wake

# GPU max clock to sotck value, enable adreno_idler
echo 600000000 > /sys/devices/fdb00000.qcom,kgsl-3d0/kgsl/kgsl-3d0/max_gpuclk
echo Y > /sys/module/adreno_idler/parameters/adreno_idler_active

exit;
