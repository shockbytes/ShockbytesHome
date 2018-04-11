class App {
  String name;
  String shortName;
  String description;
  String version;
  String icon;
  String bannerIcon;
  String pathToPlayStore;
  String detailLink;
  bool hasDetails;

  App(
      {this.name,
      this.shortName,
      this.description,
      this.version,
      this.icon,
      this.bannerIcon,
      this.pathToPlayStore,
      this.hasDetails,
      this.detailLink});

  App.fromMap(Map map) {
    this.name = map['name'];
    this.shortName = map['short_name'];
    this.description = map['description'];
    this.version = map['version'];
    this.icon = map['icon'];
    this.bannerIcon = map['banner_icon'];
    this.pathToPlayStore = map['playstore'];
    this.hasDetails = map['details_enabled'];
    this.detailLink = map['detail_link'];
  }
}
