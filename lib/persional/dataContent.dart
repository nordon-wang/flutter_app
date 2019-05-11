import 'package:flutter/material.dart';

class DataContent extends StatefulWidget{
  @override
    _DataContent createState() => _DataContent();
}

class _DataContent extends State<DataContent>{
 @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.symmetric(vertical: 10.0),
        // color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '11',
                      style:TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(height: 8.0,),
                    Text(
                      '粉丝数',
                      style:TextStyle(

                      )
                    )
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            Expanded(
              child: Container(
                color: Colors.white,
                height: 200.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '22',
                      style:TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold
                      )
                    ),
                    SizedBox(height: 8.0,),
                    Text(
                      '浏览数',
                      style:TextStyle(

                      )
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
}