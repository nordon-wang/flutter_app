import 'package:flutter/material.dart';
import 'package:flutter_app/news/model/article.dart';

class TabBarContent extends StatefulWidget{
  final int id;
  TabBarContent(this.id);

  @override
  _TabBarContent createState() => _TabBarContent();
}

class _TabBarContent extends State<TabBarContent>{

  List<Article> _list = [];

  _getContent(){
    // 根据 id 获取对应的内容
    print(widget.id);
    List jsonList = [{"id":0,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111},{"id":1,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111},{"id":2,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111},{"id":3,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111},{"id":4,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111},{"id":5,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111},{"id":6,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111}];

    List listData = jsonList.map((value) => Article.fromJson(value)).toList();
    // print(listData);
    setState(() {
      _list = listData;
    });
  }

  @override
    void initState() {
      // TODO: implement initState
      super.initState();
      _getContent();
    }

   @override
      Widget build(BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Consequat Lorem voluptate ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  RichText(
                    text: TextSpan(
                      text: '置顶  ',
                      style: TextStyle(
                        color: Colors.red
                      ),
                      children: [
                        TextSpan(
                          text: 'pms  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        TextSpan(
                          text: '评论  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        TextSpan(
                          text: '时间  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )
                      ]
                    ),
                  )
                ],
              ),
              Divider(height: 30.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Consequat Lorem voluptate ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 8.0,),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1/1,
                          child: Image.network(
                            'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                            fit: BoxFit.cover,),
                        ),
                      ),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1/1,
                          child: Image.network(
                            'https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=d66483fa0f3b5bb5aada28ac57babe5c/c83d70cf3bc79f3d068c6661b6a1cd11728b2976.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1/1,
                          child: Image.network(
                            'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                            fit: BoxFit.cover,),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  RichText(
                    text: TextSpan(
                      text: '置顶  ',
                      style: TextStyle(
                        color: Colors.red
                      ),
                      children: [
                        TextSpan(
                          text: 'pms  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        TextSpan(
                          text: '评论  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        TextSpan(
                          text: '时间  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )
                      ]
                    ),
                  )
                ],
              ),
              Divider(height: 30.0,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'Qui cupidatat eu amet aliqua ad officia anim Lorem adipisicing veniam nostrud culpa sunt. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: Image.network(
                          'https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png',
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.0,),
                  RichText(
                    text: TextSpan(
                      text: '置顶  ',
                      style: TextStyle(
                        color: Colors.red
                      ),
                      children: [
                        TextSpan(
                          text: 'pms  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        TextSpan(
                          text: '评论  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                        TextSpan(
                          text: '时间  ',
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        )
                      ]
                    ),
                  )
                ],
              )
            ],
          ),
        );
      }
}