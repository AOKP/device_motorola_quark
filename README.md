Device configuration for DROID Turbo / Moto MAXX (Quark)
==============================
Copyright 2016 - The CyanogenMod Project
Copyright 2017 - The LineageOS   Project

**I use this tree to build in Nougat cm-14.x and cm-14.x base source**

How to build this...
The below may be out of date, check XDA thread to make sure the described trees below are the ones being used today...
Use the below in /home/user/source/.repo/local_manifests/roomservice.xml

	<?xml version="1.0" encoding="UTF-8"?>
	<manifest>

	  <!-- Common qcom to build dtb and some etc lib-->
<<<<<<< HEAD
	  <project name="CyanogenMod/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-14.1" />

=======
	  <project name="LineageOS/android_device_qcom_common" path="device/qcom/common" remote="github" revision="cm-14.1" />
	  <!-- Strings for CMActions-->
	  <project name="LineageOS/android_packages_resources_devicesettings" path="packages/resources/devicesettings" remote="github" revision="cm-14.1" />
>>>>>>> a43ae98... Quark: update unix_socket_connect to set_prop
	  <!-- Device/kernel/vendor-->
	  <project name="roodbuild/device_motorola_quark" path="device/motorola/quark" remote="github" revision="aokp7" />
	  <project name="bhb27/BHB27Kernel" path="kernel/motorola/apq8084" remote="github" revision="cm-14.1" />
	  <project name="neporood/proprietary_vendor_motorola" path="vendor/motorola" remote="github" revision="bliss6" />

<<<<<<< HEAD
	  <!-- Some CM projects are out of date, use from BHB -->
	  <remove-project name="CyanogenMod/android_hardware_qcom_display" groups="pdk,qcom,qcom_display" revision="cm-14.1-caf-8084" />
=======
	  <!-- Some CM project are out of date I update they here-->
	  <remove-project name="LineageOS/android_hardware_qcom_display" groups="pdk,qcom,qcom_display" revision="cm-14.1-caf-8084" />
>>>>>>> a43ae98... Quark: update unix_socket_connect to set_prop
	  <project path="hardware/qcom/display-caf/apq8084" name="bhb27/android_hardware_qcom_display" remote="github" revision="cm-14.1-caf-8084" />
	  <remove-project name="LineageOS/android_hardware_qcom_media" groups="pdk,qcom,qcom_media" revision="cm-14.1-caf-8084" />
	  <project path="hardware/qcom/media-caf/apq8084" name="bhb27/android_hardware_qcom_media" remote="github" revision="cm-14.1-caf-8084" />
	  <remove-project path="device/qcom/sepolicy" name="LineageOS/android_device_qcom_sepolicy" />
	  <project path="device/qcom/sepolicy" name="bhb27/android_device_qcom_sepolicy" remote="github" revision="cm-14.1" />

	</manifest>

The Motorola Droid Turbo/Moto Maxx (codenamed _"quark"_) is a high-end smartphone from Motorola mobility.
It was announced on November 2014.

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 2.7 GHz Krait 450
Chipset | Qualcomm Snapdragon 805
GPU     | Adreno 420
Memory  | 3GB RAM
Shipped Android Version | 4.4.4
Storage | 32/64 GB
MicroSD | No
Battery | Non-removable Li-Po 3900 mAh battery
Display | 1440 x 2560 pixels, 5.2 inches (~565 ppi pixel density)
Camera  | 21 MP (5248 x 3936), autofocus, dual-LED flash


![MAXX](https://dl.dropboxusercontent.com/u/281742759/maxx/novo-moto-maxx-1.jpg "MAXX")
