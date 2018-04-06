class GenericProfileEntry {
  String title;
  String description;
  String summary;
  String location;
  String date;
  String icon;

  GenericProfileEntry(this.title, this.description, this.summary, this.location,
      this.date, this.icon);
  
  GenericProfileEntry.fromMap(Map map) {
    this.title = map['title'];
    this.description = map['description'];
    this.summary = map['summary'];
    this.location = map['location'];
    this.date = map['date'];
    this.icon = map['icon'];
  }
  
}
