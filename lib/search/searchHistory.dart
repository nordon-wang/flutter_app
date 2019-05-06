import 'package:flutter/material.dart';

// 搜索历史
class SearchHistory extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '搜索历史',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.black45
                    ),
                  ),
                  IconButton(
                    onPressed: (){

                    },
                    icon:Icon(Icons.delete, color: Colors.black45, size: 20.0,)
                  )
                ],
              ),
            ),
            Wrap(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.grey[200]
                      ),
                      top: BorderSide(
                        color: Colors.grey[200]
                      )
                    )
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text('html'),
                ),
                Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Colors.grey[200]
                      ),
                      top: BorderSide(
                        color: Colors.grey[200]
                      )
                    )
                  ),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text('html'),
                )
              ],
            ),
            Divider()
          ],
        );
      }
}