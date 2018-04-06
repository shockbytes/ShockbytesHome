

class Me {

  String name;
  String mail;
  String job;
  String icon;

  Me({this.name, this.mail, this.job, this.icon});

  Me.fromMap(Map map) {
    this.name = map['name'];
    this.mail = map['mail'];
    this.job = map['job'];
    this.icon = map['icon'];
  }

}