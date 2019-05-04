import 'package:flutter/material.dart';

class DrawList extends StatefulWidget{
  @override
    _DrawList createState() => _DrawList();
}

class _DrawList extends State<DrawList>{

  // 获取 我的频道 数据
  _getUserChannels(){

  }

  // 获取 频道推荐 数据
  _getAllChannels(){

  }

  // 获取用户信息
  _getUserInfo(){

  }

  @override
    void initState() {
      super.initState();
      _getUserChannels();
      _getAllChannels();
      _getUserInfo();
    }

  @override
    void deactivate() {
      // TODO: implement deactivate
      super.deactivate();
    }

  @override
    void dispose() {
      // TODO: implement dispose
      super.dispose();
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
                      child: Text('nordon'),
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
                  child: Text(
                    '编辑', 
                    style: TextStyle(
                      color: Colors.red
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child:Wrap(
                  spacing: 15.0,
                  children: <Widget>[
                    Chip(
                      label: Text('html'),
                      onDeleted: (){

                      },
                    ),
                    Chip(
                      label: Text('html'),
                      onDeleted: (){

                      },
                    ),
                    Chip(
                      label: Text('html'),
                      onDeleted: (){

                      },
                    ),
                    Chip(
                      label: Text('html'),
                      onDeleted: (){

                      },
                    ),
                  ],
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
                  children: <Widget>[
                    FilterChip(
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
                      label: Text('css'),
                      onSelected: (value){
                        print(value);
                      },
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }
}