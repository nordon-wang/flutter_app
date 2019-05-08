import 'package:flutter/material.dart';
import 'package:flutter_app/detail/comment.dart';
import 'package:flutter_app/detail/shareSheet.dart';
import 'package:flutter_app/servers/pub.dart';
import 'package:timeago/timeago.dart' as timeago;

class DetailPage extends StatefulWidget{
  final int artId;
  DetailPage(this.artId);

  @override
    _DetailPage createState() => _DetailPage();
}

// 新闻详情页面
class _DetailPage extends State<DetailPage>{

  var detail;
  List recomments;

  _getDetail(){
    PubModule.httpRequest('get', 'articleDetail?id=${widget.artId}').then((res){
      setState(() {
        detail = res.data['data'];
        recomments = detail['recomments'];
      });
    });
  }

  @override
    void initState() {
      super.initState();

      // 延迟1秒
      Future.delayed(Duration(seconds: 1), (){
        _getDetail();
      });
    }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: detail == null ? Center(
          child: CircularProgressIndicator(),
        ) : CustomScrollView( // slivers 需要在 CustomScrollView 中
          slivers: <Widget>[
            SliverAppBar(
              title: Text(detail['title']),
              actions: <Widget>[
                // 右上角图标 ...
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: (){
                    // Navigator.pop(context, true);
                    print('object');
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){
                        return ShareSheet();
                      }
                    );
                  },
                )
              ],
            ),
            // 标题
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    detail['title'],
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                )
              ])
            ),
            // 作者
            // 如果不使用 MediaQuery， 会导致 appbar 被遮挡
            MediaQuery.removePadding(
              context: context,
              removeBottom: true,
              child: SliverPersistentHeader(
                pinned: true,
                delegate: _SliverAppBarDelegate(
                  childBar:AppBar(
                    brightness: Brightness.light, // 修改系统时间的展示
                    elevation: 0.0,
                    title: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 35.0,
                                height: 35.0,
                                child: GestureDetector(
                                  onTap: (){

                                  },
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(detail['auth_photo']),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                detail['auth_name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0
                                ),
                              )
                            ],
                          ),
                          RaisedButton.icon(
                            onPressed: (){

                            },
                            icon: Icon(
                              detail['is_followed'] ? Icons.timelapse : Icons.add,
                              color: Colors.white,
                            ),
                            label: Text(
                              detail['is_followed'] ? '已关注' : '关注',
                              style: TextStyle(
                                color: Colors.white
                              ),
                            ),
                            color: Colors.blue,
                            elevation: 0.0,
                          )
                        ],
                      ),
                    ),
                    backgroundColor: Color.fromRGBO(247, 247, 247, 1),
                    leading: IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.grey,),
                      onPressed: (){
                        
                      },
                    ),
                    actions: <Widget>[
                      IconButton(
                        icon: Icon(Icons.more_horiz,color: Colors.grey),
                        onPressed: (){

                        },
                      )
                    ],
                  ),
                  // 默认的展示组件内容
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: 45.0,
                              height: 45.0,
                              child: GestureDetector(
                                onTap: (){

                                },
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(detail['auth_photo']),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  detail['auth_name'],
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  timeago.format(DateTime.parse(detail['pubdate'])),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14.0
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        RaisedButton.icon(
                          onPressed: (){

                          },
                          icon: Icon(
                            detail['is_followed'] ? Icons.timelapse : Icons.add,
                            color: Colors.white,
                          ),
                          label: Text(
                            detail['is_followed'] ? '已关注' : '关注',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          color: Colors.blue,
                          elevation: 0.0,
                        )
                      ],
                    ),
                  )
                ),
              ),
            ),
            // 文章内容
            SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    // `````` 使用前后分别三个 ‘ 包裹，可以无视内容的引号和换行
                    '''${detail['content']}''',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                    )
                  ),
                ),
                // 猜你喜欢
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '猜你喜欢',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 10.0,),
                      Wrap(
                        children: recomments.map((value){
                          return GestureDetector(
                            onTap: (){
                              print('点击猜你喜欢');
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) => DetailPage(value['id'])
                              ));
                            },
                            child: Container(
                              margin: EdgeInsets.only(bottom:10.0),
                              padding: EdgeInsets.only(right: 2.0),
                              // MediaQuery.of(context).size.width 是获取屏幕的宽度
                              width: MediaQuery.of(context).size.width / 2 - 20,
                              child: Text(
                                value['title'],
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          );
                        }).toList()
                      )
                    ],
                  ),
                ),
                // 横排的按钮
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.red
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.thumb_up, color: Colors.red,),
                            SizedBox(width: 4.0,),
                            Text(
                              '点赞',
                              style: TextStyle(
                                color: Colors.red
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 1.0,
                            color: Colors.grey
                          ),
                          borderRadius: BorderRadius.circular(15.0)
                        ),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.thumb_up, color: Colors.grey,),
                            SizedBox(width: 4.0,),
                            Text(
                              '喜欢',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Comment()
              ])
            )
          ],
        ),
      );
    }
}

// _SliverAppBarDelegate 不能直接使用 需要自定义
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate{
  final Widget child;
  final Widget childBar;

  _SliverAppBarDelegate({this.child, this.childBar});
  // _SliverAppBarDelegate(this.child);

  @override
    double get minExtent => 100.0;

  @override
    double get maxExtent => 100.0;

  @override
    Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
      if(shrinkOffset > 0){
        return SizedBox(child: childBar,);
      }
      return SizedBox(child: child,);
    }

  @override
    bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
      return false;
    }
  
}