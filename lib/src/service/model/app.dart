class App {
  String name;
  String description;
  String version;
  String icon;
  String bannerIcon;
  String pathToPlayStore;
  String detailLink;

  bool get hasDetails => detailLink.isNotEmpty;

  App(
      {this.name,
      this.description,
      this.version,
      this.icon,
      this.bannerIcon,
      this.pathToPlayStore,
      this.detailLink});

  App.fromMap(Map map) {
    this.name = map['name'];
    this.description = map['description'];
    this.version = map['version'];
    this.icon = map['icon'];
    this.bannerIcon = map['banner_icon'];
    this.pathToPlayStore = map['playstore'];
    this.detailLink = map['detail_link'];
  }

}
