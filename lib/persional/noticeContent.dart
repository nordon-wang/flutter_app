import 'package:flutter/material.dart';

class NoticeContent extends StatefulWidget{
  @override
    _NoticeContent createState() => _NoticeContent();
}

class _NoticeContent extends State<NoticeContent>{
 @override
    Widget build(BuildContext context) {
      return Container(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 6.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(12.0),
                title: Text(
                  'Nisi sit ipsum voluptate nisi enim et proident ex ad irure.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    '2019-05-11'
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 6.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(12.0),
                title: Text(
                  'Nisi sit ipsum voluptate nisi enim et proident ex ad irure.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    '2019-05-11'
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 6.0),
              child: ListTile(
                contentPadding: EdgeInsets.all(12.0),
                title: Text(
                  'Nisi sit ipsum voluptate nisi enim et proident ex ad irure.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 6.0),
                  child: Text(
                    '2019-05-11'
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
}