

class Skill {

  String name;
  String icon;
  String type;
  int rating;

  Skill(this.name, this.icon, this.type, this.rating);

  Skill.fromMap(Map map) {
    this.name = map['name'];
    this.icon = map['icon'];
    this.type = map['type'];
    this.rating = map['rating'];
  }

}