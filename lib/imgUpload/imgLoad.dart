import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/servers/pub.dart';
import 'package:image_picker/image_picker.dart';

class ImgLoad extends StatefulWidget{
  @override
    _ImgLoad createState() => _ImgLoad();
}

class _ImgLoad extends State<ImgLoad>{

  File _image_front;
  File _image_back;
  File _image_all;

  // 获取照片
  _getImg(type) async{
    File  _image = await ImagePicker.pickImage(source: ImageSource.gallery);

    switch (type) {
      case 'front':
        setState((){
          _image_front = _image;
        });
        break;
      case 'back':
        setState((){
          _image_back = _image;
        });
        break;
      case 'all':
        setState((){
          _image_all = _image;
        });
        break;
      default:
    }

  }


  _uploadImg(File image, name) async{
    FormData imageForm  = FormData.from({
      'image':UploadFileInfo(image, '${name}')
    });

    var result = await PubModule.httpRequest('post', '/upload', imageForm);
  }

 @override
    Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 10.0),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              child: Text(
                '请上传身份证证明'
              ),
            ),
            Divider(height: 10.0,),
            SizedBox(height: 10.0,),
            Row(
              children: <Widget>[
                SizedBox(width: 10.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      _getImg('front');
                    },
                    child: _image_front == null ? 
                    Image.asset('images/id-card.jpg') :
                    Image.file(_image_front),
                  ),
                ),
                SizedBox(width: 20.0,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      _getImg('back');
                    },
                    child: _image_back == null ? 
                    Image.asset('images/id-card2.png'):
                    Image.file(_image_back),
                  ),
                ),
                SizedBox(width: 10.0,),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  _getImg('all');
                },
                child: _image_all == null ?
                Image.asset('images/id-card3.jpg') :
                Image.file(_image_all),
              ),
            )
          ],
        ),
      );
    }
}