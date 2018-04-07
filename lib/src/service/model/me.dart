

class Me {

  String name;
  String mail;
  String job;
  String icon;
  String location;
  int age;

  Me({this.name, this.mail, this.job, this.icon, this.location, this.age});

  Me.fromMap(Map map) {
    this.name = map['name'];
    this.mail = map['mail'];
    this.job = map['job'];
    this.icon = map['icon'];
    this.location = map['location'];
    this.age = map['age'];
  }

}