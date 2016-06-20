#!/bin/bash
# simple build sh ... alias bt='/home/user/source_folder/device/motorola/quark/rootdir/etc/sbin/build_TWRP.sh'


cd ~/temp/KernelAdiutor
export JAVA_HOME="/usr/lib/jvm/java-7-openjdk-amd64/"
./gradlew clean
./gradlew build

if [ ! -e ./app/build/outputs/apk/app-release-unsigned.apk ]; then
	echo -e "$\n{bldred}App not build${txtrst}\n"
	exit 1;
else
	/home/fella/new-bhb/build/bhbkernel/ZipScriptSign/sign.sh test /home/fella/temp/KernelAdiutor/app/build/outputs/apk/app-release-unsigned.apk
	mv ./app/build/outputs/apk/app-release-unsigned.apk-signed.zip ./app/build/outputs/apk/KernelAdiutor_teste.apk
fi;

