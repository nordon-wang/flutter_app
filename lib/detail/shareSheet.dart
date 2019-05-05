// import 'package:flutter/material.dart';

// class ShareSheet extends StatefulWidget{
//   @override
//     _ShareSheet createState() => _ShareSheet();
// }

// class _ShareSheet extends State<ShareSheet>{
//    @override
//       Widget build(BuildContext context) {
//         return Container(
//           color: Colors.red,
//           child: Text('data'),
//         );
//       }
// }

import 'package:flutter/material.dart';
import 'package:flutter_app/detail/reportSheet.dart';

class ShareSheet extends StatelessWidget{
   @override
      Widget build(BuildContext context) {
        return Container(
          height: 250.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.settings, size: 40.0,),
                        Text('微信')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.settings, size: 40.0,),
                        Text('朋友圈')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.settings, size: 40.0,),
                        Text('微博')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.settings, size: 40.0,),
                        Text('QQ')
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Icon(Icons.settings, size: 40.0,),
                        Text('显示设置')
                      ],
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context); // 关闭自己 打开举报框
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context){
                            return ReportSheet();
                          }
                        );
                      },
                      child:  Column(
                        children: <Widget>[
                          Icon(Icons.error, size: 40.0,),
                          Text('举报')
                        ],
                      ),
                    )
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('')
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('')
                      ],
                    ),
                  )

                ],
              ),
              Center(
                child: Text('取消'),
              )
            ],
          )
        );
      }
}