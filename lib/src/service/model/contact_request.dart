
class ContactRequest {

  String title;
  String email;
  String description;

  ContactRequest(this.title, this.email, this.description);

  ContactRequest.fromMap(Map map) {
    this.title = map['title'];
    this.email = map['email'];
    this.description = map['description'];
  }

  Map toMap() => {
    "title": title,
    "email": email,
    "description": description
  };
}