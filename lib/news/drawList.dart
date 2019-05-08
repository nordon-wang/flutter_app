import 'package:flutter/material.dart';
import 'package:flutter_app/servers/pub.dart';

class DrawList extends StatefulWidget{
  final VoidCallback refresh;
  DrawList(this.refresh);

  @override
    _DrawList createState() => _DrawList();
}

class _DrawList extends State<DrawList>{
  List userChannels = [];
  List allChannels = [];
  String enName = '';
  String zhName = '';
  bool isEdite = false;

  // 获取 我的频道 数据  userChannels
  _getUserChannels(){
    PubModule.httpRequest('get', 'userChannels').then( (res) {
      var data =res.data['data'];
      // print(data['channels']);

      setState(() {
        userChannels = data['channels'];
      });
    });
  }

  // 获取 频道推荐 数据
  _getAllChannels(){
    PubModule.httpRequest('get', 'allChannels').then( (res) {
      var data =res.data['data'];
      // print(data.channels);

      setState(() {
        allChannels = data['channels'];
      });
    });
  }

  // 获取用户信息
  _getUserInfo(){
    PubModule.httpRequest('get', 'userInfo').then( (res) {
      var data =res.data['data'];
      // print(data);

      setState(() {
        zhName = data['zh_name'];
        enName = data['en_name'];
      });
    });
  }

  @override
    void initState() {
      super.initState();
      _getUserChannels();
      _getAllChannels();
      _getUserInfo();
    }

    @override
      void dispose() {
        // TODO: implement dispose
        super.dispose();
        widget.refresh(); // drawList页面关闭的时候，通过调用 news 的 _getChannels 方法重新获取数据
      }


   @override
      Widget build(BuildContext context) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.all(0.0),
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Center(
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: CircleAvatar(
                      child: Text(enName),
                    ),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  '我的频道',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight:FontWeight.normal
                  )
                ),
                trailing: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 2.0
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        isEdite = !isEdite;
                      });
                    },
                    child: Text(
                      isEdite ? '完成' : '编辑', 
                      style: TextStyle(
                        color: Colors.red
                      ),
                    ),
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child:Wrap(
                  spacing: 15.0,
                  children: userChannels.map((value){
                    return Chip(
                      label: Text(value['name']),
                      onDeleted: isEdite ? (){
                        setState(() {
                          userChannels.remove(value);
                        });
                      } : null,
                    );
                  }).toList(),
                ),
              ),
              ListTile(
                title: Text(
                  '频道推荐',
                  style:TextStyle(
                    fontSize: 16.0,
                    fontWeight:FontWeight.normal
                  )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: Wrap(
                  spacing: 15.0,
                  children: allChannels.map((value){
                    return FilterChip(
                      avatar: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Text(
                          '+',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                          ),
                        ),
                      ),
                      label: Text(value['name']),
                      onSelected: (status){
                        
                        setState(() {
                          allChannels.remove(value);
                          userChannels.add(value);
                        });
                      },
                    );
                  }).toList()
                  // <Widget>[
                  //   FilterChip(
                  //     avatar: CircleAvatar(
                  //       backgroundColor: Colors.grey,
                  //       child: Text(
                  //         '+',
                  //         style: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 16.0
                  //         ),
                  //       ),
                  //     ),
                  //     label: Text('css'),
                  //     onSelected: (value){
                  //       print(value);
                  //     },
                  //   )
                  // ],
                ),
              )
            ],
          ),
        );
      }
}