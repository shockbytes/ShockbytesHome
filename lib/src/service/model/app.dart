class App {
  String name;
  String description;
  String version;
  String icon;
  String bannerIcon;
  String pathToPlayStore;

  App(
      {this.name,
      this.description,
      this.version,
      this.icon,
      this.bannerIcon,
      this.pathToPlayStore});

  App.fromMap(Map map) {
    this.name = map['name'];
    this.description = map['description'];
    this.version = map['version'];
    this.icon = map['icon'];
    this.bannerIcon = map['banner_icon'];
    this.pathToPlayStore = map['playstore'];
  }

  @override
  String toString() {
    return "Name: $name\nDescription: $description\nVersion: $version\nIcon: $icon\nBackground: $bannerIcon\nPlaystore link: $pathToPlayStore";
  }
}
