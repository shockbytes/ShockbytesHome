import 'package:ShockbytesHome/src/service/blog_service.dart';
import 'package:ShockbytesHome/src/service/model/blog_post.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';

@Component(
  selector: 'home',
  styleUrls: const [
    'home_component.css',
  ],
  templateUrl: 'home_component.html',
  directives: const [materialDirectives, CORE_DIRECTIVES, ROUTER_DIRECTIVES],
  providers: const [materialProviders],
)
class HomeComponent implements OnInit {
  BlogService _blogService;
  List<BlogPost> posts;

  HomeComponent(this._blogService);

  @override
  ngOnInit() {
    _blogService.posts().listen((data) {
      if (data.length > 0) {
        this.posts = new List.from(data);
      }
    });
  }
}
