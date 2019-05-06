import 'package:flutter/material.dart';
import 'package:flutter_app/search/commentContent.dart';
import 'package:flutter_app/search/searchHistory.dart';
import 'package:flutter_app/search/searchResult.dart';

class SearchPage extends StatefulWidget{
  @override
    _SearchPage createState() => _SearchPage();
}


class _SearchPage extends State<SearchPage>{
  String keyWords = '';

   @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height:36.0,
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6.0)
                    ),
                    child: TextField(
                      autofocus: true,
                      onChanged: (value){
                        print(value);
                        setState(() {
                          keyWords = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: '请输入...',
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.all(8.0),
                        prefixIcon: Icon(Icons.search, color: Colors.grey,),
                      ),
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: (){

                  },
                  child: Text(
                    '取消',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.normal
                    ),
                  ),
                ),
              ],
            ),
            elevation: 0.0,
          ),
          body: keyWords != '' ? ListView(
            children: <Widget>[
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SearchResult()
                  ));
                },
                leading: Icon(Icons.search, color:Colors.grey, size: 20.0),
                title: Text('威武胸罩'),
              ),
              Divider(height: 0,),
              ListTile(
                leading: Icon(Icons.search, color:Colors.grey, size: 20.0),
                title: Text('威武胸罩'),
              ),
            ],
          ) :
          Column(
            children: <Widget>[
              SearchHistory(),
              CommentContent()
            ],
          ),
        );
      }

  commentContent(BuildContext context) {}
}