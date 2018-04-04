
class BlogPost {

  String title;
  String text;
  String date;
  String icon;

  BlogPost({this.title, this.text, this.icon});

  BlogPost.fromMap(Map map) {
    this.title = map['title'];
    this.text = map['text'];
    this.date = map['date'];
    this.icon = map['icon'];
  }

}