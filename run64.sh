adb push hello64 /data/local/tmp
adb shell "chmod 777 /data/local/tmp/hello64"
adb shell "ls -la /data/local/tmp/hello64"
adb shell "/data/local/tmp/hello64"


