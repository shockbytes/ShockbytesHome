

class RemiDownload {

  String version;
  String file;

  RemiDownload(this.version, this.file);

  RemiDownload.fromMap(Map map) {
    this.version = map['version'];
    this.file = map['file'];
  }

}