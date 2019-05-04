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
    List jsonList = [{"id":0,"art_id":1,"title":"title","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":1,"cover":{"type":0,"images":[""]}},{"id":1,"art_id":1,"title":"Elit nisi enim occaecat enim enim sint cupidatat reprehenderit sunt ullamco proident consectetur.","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":1,"cover":{"type":1,"images":["https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"]}},{"id":2,"art_id":1,"title":"Id laboris quis ea reprehenderit laboris aliqua.","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":1,"cover":{"type":3,"images":["https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png","https://gss2.bdstatic.com/-fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=d66483fa0f3b5bb5aada28ac57babe5c/c83d70cf3bc79f3d068c6661b6a1cd11728b2976.jpg","https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"]}},{"id":3,"art_id":1,"title":"Incididunt consectetur ex incididunt proident aliquip amet consectetur.","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":1,"cover":{"type":1,"images":["https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"]}},{"id":4,"art_id":1,"title":"Aliquip consequat veniam aliqua in amet exercitation.","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":1,"cover":{"type":1,"images":["https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"]}},{"id":5,"art_id":1,"title":"Ea nisi magna dolore ut cillum ipsum.","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":0,"cover":{"type":1,"images":["https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"]}},{"id":6,"art_id":1,"title":"Elit reprehenderit eu voluptate non officia eiusmod et voluptate reprehenderit elit dolor.","auth_id":11,"auth_name":"auth_name","comment_count":111,"is_top":0,"cover":{"type":1,"images":["https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png"]}}];

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
          child: ListView.builder(
            itemCount: _list.length,
            itemBuilder: (context, index){
              return NewsItem(_list[index]);
            },
          )
        );
      }
}

// class 

class NewsItem extends StatelessWidget{
  final Article article;
  NewsItem(this.article);

  @override
    Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          article.imgType == 1 ? 
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Text(
                  article.title,
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
                  article.images[0],
                  fit: BoxFit.cover,
                ),
              )
            ],
          ) :
          Text(
            article.title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 8.0,),
          article.imgType == 3 ? Row(
            children: article.images.map((value){
              return Expanded(
                child: AspectRatio(
                  aspectRatio: 1/1,
                  child: Image.network(
                    value,
                    fit: BoxFit.cover,),
                ),
              );
            }).toList()
          ) : SizedBox(),
          RichText(
            text: TextSpan(
              text: '${article.isTop == 1 ? '置顶  ' : ''}',
              style: TextStyle(
                color: Colors.red
              ),
              children: [
                TextSpan(
                  text: '${article.authName}  ',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                ),
                TextSpan(
                  text: '${article.commentCount}评论  ',
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
          ),
          Divider(height: 30.0,),
        ],
      );
    }
}