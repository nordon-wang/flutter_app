import 'package:flutter/material.dart';
import 'package:flutter_app/detail/detail.dart';
import 'package:flutter_app/module/pub.dart';
import 'package:flutter_app/news/model/article.dart';
import 'package:timeago/timeago.dart' as timeago;



class TabBarContent extends StatefulWidget{
  final int id; // id 是顶部滑动栏的 索引值，根据不同的所以获取对应的列表数据
  TabBarContent(this.id);

  @override
  _TabBarContent createState() => _TabBarContent();
}

class _TabBarContent extends State<TabBarContent>{

  List<Article> _list = [];
  // 下拉刷新
  ScrollController _controller = ScrollController();

  _getContent([type]){
    // 根据 id 获取对应的内容
    print(widget.id);

    PubModule.httpRequest('get', 'articles').then( (res) {
      // print(res.data.code);  报错
      var data =res.data['data'];

      List jsonList = data;
      List<Article> listData = jsonList.map((value) => Article.fromJson(value)).toList();

      if(type == 'scroll'){ // 下拉刷新
        setState(() {
          _list.addAll(listData);        
        });
      }else{ // 正常加载数据
        setState(() {
          _list = listData;
        });
      }

    });
  }

  // 下拉刷新
  Future _refresh() async{
    // 接口
    print('刷新');
    _getContent();
  }


  @override
    void initState() {
      super.initState();
      _getContent();

      // 监听 下啦刷新
      _controller.addListener(() {
        var maxScroll = _controller.position.maxScrollExtent;
        var pexels = _controller.position.pixels;
        // print(pexels);
        // print(maxScroll);
        if(maxScroll == pexels){
          print('下啦刷新');
          _getContent('scroll');
        }
      });
    }

   @override
      Widget build(BuildContext context) {
        return RefreshIndicator(
          onRefresh: _refresh,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListView.builder(
              itemCount: _list.length,
              itemBuilder: (context, index){
                return GestureDetector(
                  onTap: (){
                    // 跳转至 详情页
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => DetailPage(_list[index].artId)
                    ));
                  },
                  child: NewsItem(_list[index]),
                );
              },
              controller: _controller,
            )
          ),
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
                  text: timeago.format(DateTime.parse(article.pubdate)),
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