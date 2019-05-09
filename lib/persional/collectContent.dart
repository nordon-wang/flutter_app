import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_app/servers/pub.dart';

class CollectContent extends StatefulWidget{
  final String text;

  CollectContent(this.text);

  @override
    _CollectContent createState() => _CollectContent();
}


class _CollectContent extends State<CollectContent>{

  List collectList;

  _getData() async {
    var res = await PubModule.httpRequest('get', 'articles');
    // print(res.data['data']);
    setState(() {
      collectList = res.data['data'];
    });
  }

  @override
    void initState() {
      super.initState();
      _getData();
    }
// collectList == null ? SizedBox() : 
  @override
    Widget build(BuildContext context) {
      return Container(
        child: ListView(
          children: collectList.map((value) {
            return Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 6.0),
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Duis in exercitation officia exercitation nostrud.',
                    style: TextStyle(
                      fontSize: 20.0
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                        ),
                      ),
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                        ),
                      ),
                      Expanded(
                        child: CachedNetworkImage(
                          imageUrl: "https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png",
                          placeholder: (context, url) => new CircularProgressIndicator(),
                          errorWidget: (context, url, error) => new Icon(Icons.error),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Text(
                    'pms 信息'
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: (){

                          },
                          icon: Icon(Icons.chat),
                          label: Text(
                            '评论'
                          ),
                          elevation: 0.0,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: (){

                          },
                          icon: Icon(Icons.thumb_up),
                          label: Text(
                            '点赞'
                          ),
                          elevation: 0.0,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: RaisedButton.icon(
                          onPressed: (){

                          },
                          icon: Icon(Icons.favorite),
                          label: Text(
                            '收藏'
                          ),
                          elevation: 0.0,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList()
        ),
      );
    }
}