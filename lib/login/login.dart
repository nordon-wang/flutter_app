import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:flutter_app/home/home.dart';
// import 'dart:io';
// import 'package:dio/dio.dart';
import 'package:flutter_app/servers/pub.dart';
// import 'package:shared_preferences/shared_preferences.dart';
 

class LoginPage extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('用户登录'),
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.grey[100],
          child: FormRegist(),
        ),
      );
    }
}

class FormRegist extends StatefulWidget{
  @override
  _FormRegist createState() => _FormRegist();
}

class _FormRegist extends State<FormRegist>{

  // 定义变量
  String _verityStr = '获取验证码';
  int _seconds = 0;
  Timer _timer;

  String username = '';
  String verityCode = '';

  // 获取验证码
  /* _getYzmCode() async{
    if(_seconds == 0){
      // 1.开启倒计时
      _startTimer();
      // 2. 创建http请求 请求短信接口
      // 2.1 引入 io
      // 2.2 创建 client
      var httpClient = new HttpClient();
      // 2.3 构造 uri
      var uri = new Uri.http('example.com', '/path', {'name':'wangyao'});
      // 2.4 发起请求
      var req = await httpClient.getUrl(uri);
      // 2.5 关闭请求 等待结果
      var res = await req.close(); // res 最终获取的结果
    }
  } */
  _getYzmCode() async{
    PubModule.httpRequest('get', 'getCode').then( (res) {
      // print(res.data.code);  报错
      print(res.data['code']);
      if(res.data['code'] != 200){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('发送验证码成功'),
          )
        );
      }else{
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(res.data['msg']),
          )
        );
      }
    });
    if(_seconds == 0 && username != ''){
      // 1.开启倒计时
      _startTimer();
      // 2. 创建http请求 请求短信接口
      // https://api.myjson.com/bins/1e5mu0
      // Dio dio = Dio();
      // final res = await dio.get('https://api.myjson.com/bins/1e5mu0');
      // print(res);
      PubModule.httpRequest('post', 'getcode').then( (res) {
        print(res);
      });
    }
  }

  // 登录
  _login() {
    // 跳转
    // Navigator.push(context, MaterialPageRoute(
    //   builder: (context) => Home()
    // ));
    // Navigator.pushNamed(context, '/home');

    // 跳转路由，但是不希望跳转之后的页面可以返回
    Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);

    PubModule.httpRequest('post', 'custom', {
      "username":username,
      "verityCode":verityCode
    }).then( (res) async{
      print(res);
      // 存储token
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString('token', 'my-token');
      // print(prefs.getString('token'));

      if(res.data['code'] != 200){
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('登录'),
          )
        );
      }else{
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text(res.data['msg']),
          )
        );
      }
    });
  }

  // 定义 开启定时器 方法
  _startTimer(){
    _seconds = 60;
    _timer = Timer.periodic(Duration(seconds: 1), (timer){
      // 倒计时结束
      if(_seconds == 0){
        _cancelTimer();
        return;
      }

      _seconds--;

      setState(() {
        if(_seconds == 0){
          _verityStr = '重新获取验证码';
        }else{
          _verityStr = '$_seconds(s)';
        }

      });
    });
  }

  // 取消定时器
  _cancelTimer(){
    _timer.cancel();
  }

  // 页面初始化 
  @override
    void initState() {
      super.initState();
    }

  // 页面销毁时
  @override
    void dispose() {
      super.dispose();
      _cancelTimer();
    }


  @override
    Widget build(BuildContext context) {
      return Column(
        children: <Widget>[
          // 手机号
          Container(
            color: Colors.white,
            // EdgeInsets.symmetric() 设置水平垂直方向的 padding
            // horizontal 水平方向
            // vertical 垂直方向
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                // 图标
                prefixIcon: Icon(Icons.mobile_screen_share, color: Colors.grey,),
                // 聚焦时 设置边框
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12
                  )
                ),
                // 正常时 设置边框
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black12
                  )
                ),
                // 设置 placeholder 内容和样式
                hintText: '请输入手机号',
                hintStyle: TextStyle(
                  color: Colors.black38,
                  fontSize: 14.0
                )
              ),
              onChanged: (value){
                setState(() {
                  username = value;
                });
              },
              onSubmitted: (value){

              },
            ),
          ),
          // 密码
          Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    // EdgeInsets.symmetric(horizontal: 10.0) 设置水平垂直方向的 padding
                    // horizontal 水平方向
                    // vertical 垂直方向
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        // 图标
                        prefixIcon: Icon(Icons.lock, color: Colors.grey,),
                        // 聚焦时 设置边框
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        // 正常时 设置边框
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none
                        ),
                        // 设置 placeholder 内容和样式
                        hintText: '请输入验证码',
                        hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: 14.0
                        )
                      ),
                      onChanged: (value){
                        setState(() {
                          verityCode = value;
                        });
                      },
                      onSubmitted: (value){

                      },
                    ),
                  ),
                ),
                // GestureDetector 用于包含在不能点击的 组件 外层
                GestureDetector(
                  onTap: (){
                    _getYzmCode();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 110.0,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(237, 237, 237, 1),
                      borderRadius: BorderRadius.circular(120.0)
                    ),
                    child: Text(_verityStr),
                  ),
                ),
                SizedBox(
                  width: 10.0,
                )
              ],
            ),
          ),
          // 按钮
          Container(
            width: double.infinity,
            height: 50.0,
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            margin: EdgeInsets.only(top:20.0),
            child: RaisedButton(
              onPressed: username == '' || verityCode == '' ? null : (){
                _login();
              },
              child: Text(
                'login',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              elevation: 0.0,
              color: Colors.blue,
              disabledColor: Colors.blue[100],
            ),
          )
        ],
      );
    }
}

