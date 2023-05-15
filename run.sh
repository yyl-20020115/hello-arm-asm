adb push hello /data/local/tmp
adb shell "chmod 777 /data/local/tmp/hello"
adb shell "ls -la /data/local/tmp/hello"
adb shell "/data/local/tmp/hello"


#Output:
#Hello, ARM! Written by Yilin
