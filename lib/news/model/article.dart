// 序列化的构造函数, 防止数据类型的定义和接口返回的数据类型不一致
class Article {
  int artId;
  String title;
  int authId;
  String authName;
  int commentCount;
  int isTop;
  int imgType;
  List images;
  String pubdate;

  Article.fromJson(json){
    artId = json['art_id'];
    title = json['title'];
    authId = json['auth_id'];
    authName = json['auth_name'];
    commentCount = json['comment_count'];
    isTop = json['is_top'];
    imgType = json['cover']['type'];
    images = json['cover']['images'];
    pubdate = json['pubdate'];
  }

}