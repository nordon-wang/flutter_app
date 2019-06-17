
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

- 环境配置问题

```
修改 ~/.zshrc 文件
# 因为 flutter 和 mysql 每次都需要执行才能配置到全局， 需要在这里配置之后才能全局使用

export PATH="$PATH":/usr/local/mysql/bin

export PATH=~/development/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
```

```
配置 ～/.bash_profile 文件

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home
PATH=$JAVA_HOME/bin:$PATH:.
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export JAVA_HOME
export PATH
export CLASSPATH


export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator

export PATH=~/development/flutter/bin:$PATH
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

export PATH="$PATH":/usr/local/mysql/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

```

