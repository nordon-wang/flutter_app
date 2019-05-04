import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget{
  final int artId;
  DetailPage(this.artId);

  @override
    _DetailPage createState() => _DetailPage();
}

// 新闻详情页面
class _DetailPage extends State<DetailPage>{
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: CustomScrollView( // slivers 需要在 CustomScrollView 中
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Sit non duis mollit ea eu culpa elit mollit non exercitation incididunt adipisicing.'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: (){

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
                    'Et proident id ipsum consequat enim laborum non eu irure esse in.',
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
                                    backgroundImage: NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png'),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10.0,),
                              Text(
                                '王耀',
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
                            icon: Icon(Icons.add, color: Colors.white,),
                            label: Text(
                              '关注',
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
                                  backgroundImage: NetworkImage('https://cdn.jsdelivr.net/gh/flutterchina/website@1.0/images/flutter-mark-square-100.png'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '王耀',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),
                                ),
                                Text(
                                  '多久之前',
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
                          icon: Icon(Icons.add, color: Colors.white,),
                          label: Text(
                            '关注',
                            style: TextStyle(
                              color: Colors.white
                            ),
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
                    '''
  Aliqua ea velit "occaecat" 'cillum' nostrud sit. Consectetur exercitation aliquip mollit nulla et nostrud ullamco aliqua ipsum occaecat deserunt exercitation. Est anim proident labore dolore commodo velit ex ea laboris excepteur id aliqua.

  Culpa irure cillum nulla fugiat dolor. Incididunt ipsum ipsum do eiusmod est non cupidatat aute commodo ex pariatur proident nisi. Labore et in veniam sint magna excepteur duis. Laborum consequat sit duis culpa amet eiusmod aliquip deserunt amet ut labore. Dolore consequat culpa ipsum anim do reprehenderit ullamco incididunt mollit ad duis. Consequat minim commodo Lorem qui qui ipsum occaecat.

  Laboris consequat sit nulla consectetur est dolor consequat in velit nisi. Dolore proident dolor voluptate sunt aliquip dolore tempor et mollit ad officia anim. Quis deserunt eu officia dolor. Lorem in sint voluptate cillum officia nulla duis eiusmod ad aliqua exercitation nulla eu.

  Amet sit ex aliquip elit minim dolor veniam. Do nisi laboris eu non adipisicing et qui occaecat sunt est anim elit. Nulla aliqua nulla voluptate aute dolor duis tempor commodo consectetur aliqua laboris tempor. Voluptate dolore duis consequat Lorem adipisicing nulla minim aliqua sunt ullamco aliquip. Non magna fugiat ex nisi non veniam laborum mollit reprehenderit. Fugiat ea incididunt nostrud dolor in aliqua et eu velit. Sunt ullamco nisi cillum fugiat non tempor.

  Id ex sit fugiat voluptate aliqua. Nisi pariatur sit cillum incididunt. Occaecat occaecat sint ea elit id cillum nisi veniam. Irure exercitation nostrud dolor nulla deserunt deserunt sint magna dolor ea elit. Ad ullamco qui dolore cupidatat laborum mollit aliquip quis exercitation voluptate. Sit consequat voluptate consequat eiusmod cillum id dolor consequat et esse commodo cillum fugiat aute.
                    ''',
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
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom:10.0),
                            padding: EdgeInsets.only(right: 2.0),
                            // MediaQuery.of(context).size.width 是获取屏幕的宽度
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Text(
                              'Voluptate laboris ullamco irure amet cupidatat eiusmod quis minim dolor quis exercitation nisi.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom:10.0),
                            padding: EdgeInsets.only(right: 2.0),
                            // MediaQuery.of(context).size.width 是获取屏幕的宽度
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Text(
                              'Voluptate laboris ullamco irure amet cupidatat eiusmod quis minim dolor quis exercitation nisi.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom:10.0),
                            padding: EdgeInsets.only(right: 2.0),
                            // MediaQuery.of(context).size.width 是获取屏幕的宽度
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Text(
                              'Voluptate laboris ullamco irure amet cupidatat eiusmod quis minim dolor quis exercitation nisi.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom:10.0),
                            padding: EdgeInsets.only(right: 2.0),
                            // MediaQuery.of(context).size.width 是获取屏幕的宽度
                            width: MediaQuery.of(context).size.width / 2 - 20,
                            child: Text(
                              'Voluptate laboris ullamco irure amet cupidatat eiusmod quis minim dolor quis exercitation nisi.',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
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
                )
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