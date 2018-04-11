

class RemiDownload {

  String version;
  String jarFile;
  String winFile;

  RemiDownload(this.version, this.jarFile, this.winFile);

  RemiDownload.fromMap(Map map) {
    this.version = map['version'];
    this.jarFile = map['file_jar'];
    this.winFile = map['file_windows'];
  }

}