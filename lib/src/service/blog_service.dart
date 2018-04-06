import 'dart:async';
import 'dart:convert';
import 'dart:html';
import 'dart:js';

import 'package:ShockbytesHome/src/service/model/blog_post.dart';
import 'package:angular/angular.dart';

@Injectable()
class BlogService {
  Future<List<BlogPost>> _readPosts() async {
    List<BlogPost> posts = new List<BlogPost>();
    String jsonString = await HttpRequest.getString('/data/blog_posts.json');
    JsArray data = JSON.decode(jsonString);
    data.map((f) => new BlogPost.fromMap(f)).forEach((p) => posts.add(p));
    return posts;
  }

  Stream<List<BlogPost>> posts() {
    return new Stream.fromFuture(new Future(_readPosts));
  }
}
