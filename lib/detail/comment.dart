import 'package:flutter/material.dart';

class Comment extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 6.0),
                    width: 30.0,
                    height: 30.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Text(
                                'nordon'
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.thumb_up, size: 20.0,),
                                SizedBox(width: 6.0,),
                                Text('11')
                              ],
                            )
                          ],
                        ),
                        Text(
                          'Nulla aliquip qui proident magna veniam ea non reprehenderit ullamco enim proident.',
                          maxLines:2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Row(
                          children: <Widget>[
                            Text('time'),
                            SizedBox(width: 10.0,),
                            Chip(
                              padding: EdgeInsets.all(0.0),
                              label: Text('1回复'),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              // 输入框
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 30.0,
                      padding: EdgeInsets.only(left:12.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black26
                        ),
                        borderRadius: BorderRadius.circular(30.0)
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '请输入评论',
                          hintStyle: TextStyle(
                            fontSize: 14.0
                          ),
                          contentPadding: EdgeInsets.all(4.0),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none
                        ),
                        onSubmitted: (str){
                          print(str);
                        },
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.share),
                    onPressed: (){

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.favorite),
                    onPressed: (){

                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.chat),
                    onPressed: (){
                      
                    },
                  )
                ],
              )
            ],
          ),
        );
      }
}