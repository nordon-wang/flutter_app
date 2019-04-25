
- window 操作
```
 adb devices // 查看连接设备列表
 adv connect 127.0.0.1:62001 // 连接夜神的模拟器
```
- ios 操作
```
启动模拟器
	ios
		open -a Simulator
	
	android
		emulator -avd -list-avds
		emulator -avd Nexus_5X_API_25

```

- dart 第三方库
[dart 第三方库](https://pub.dartlang.org)
 - dio  接口请求
 - shared_preferences 数据持久化


- 问题
```
启动时遇到
  Waiting for another flutter command to release the startup lock...

解决
ps -ef | grep flutter | grep -v grep | awk '{print $2}' | xargs kill -9 
```