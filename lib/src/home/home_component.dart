import 'package:ShockbytesHome/src/service/blog_service.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';



@Component(
  selector: 'home',
  styleUrls: const [
    'home_component.css',
  ],
  templateUrl: 'home_component.html',
  directives: const [
    materialDirectives,
    CORE_DIRECTIVES,
    ROUTER_DIRECTIVES
  ],
  providers: const [materialProviders],
)
class HomeComponent {

  BlogService blogService;

  HomeComponent(this.blogService);

}