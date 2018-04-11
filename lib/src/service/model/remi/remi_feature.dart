

class RemiFeature {

  String title;
  String summary;
  String icon;
  String text;

  RemiFeature.fromMap(Map map) {
    this.title = map['title'];
    this.summary = map['summary'];
    this.icon = map['icon'];
    this.text = map['text'];
  }

}