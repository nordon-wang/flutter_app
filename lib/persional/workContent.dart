import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class workContent extends StatefulWidget{
  final String name;

  workContent(this.name);
  @override
    _workContent createState() => _workContent();
}

class _workContent extends State<workContent>{

 @override
    Widget build(BuildContext context) {
      return Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://wx.qlogo.cn/mmopen/vi_32/C1ZwROol5U2XQCEgpN4dnVXOO74Qwnic4uKq8XTl5tMUTGia6O6f6zlr9stR2M9SXRbmtZyRjPWCibRydicico9biaPg/132'),
                    ),
                    title: Text(
                      '王耀'
                    ),
                    subtitle: Text(
                      '2019-05-11'
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '${widget.name} Nisi deserunt ad in non consequat.',
                      style: TextStyle(
                        fontSize: 16.0
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
                            placeholder: (context, url) => new CircularProgressIndicator(),
                            errorWidget: (context, url, error) => new Icon(Icons.error),
                          ),
                        ),
                        SizedBox(width: 4.0,),
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
                            placeholder: (context, url) => new CircularProgressIndicator(),
                            errorWidget: (context, url, error) => new Icon(Icons.error),
                          ),
                        ),
                        SizedBox(width: 4.0,),
                        Expanded(
                          child: CachedNetworkImage(
                            imageUrl: "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
                            placeholder: (context, url) => new CircularProgressIndicator(),
                            errorWidget: (context, url, error) => new Icon(Icons.error),
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(height: 0,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton.icon(
                            icon: Icon(Icons.chat),
                            label: Text(
                              '11'
                            ),
                            color: Colors.white,
                            onPressed: (){

                            },
                            elevation: 0,
                          ),
                        ),
                        Expanded(
                          child: RaisedButton.icon(
                            icon: Icon(Icons.thumb_up),
                            label: Text(
                              '22'
                            ),
                            color: Colors.white,
                            onPressed: (){

                            },
                            elevation: 0,
                          ),
                        ),
                        Expanded(
                          child: RaisedButton.icon(
                            icon: Icon(Icons.chat),
                            label: Text(
                              '33'
                            ),
                            color: Colors.white,
                            onPressed: (){

                            },
                            elevation: 0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
}