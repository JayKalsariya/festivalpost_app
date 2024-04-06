import 'package:festivalpost_app/utils/headers.dart';
import 'package:festivalpost_app/view/editing_page/editing_page.dart';

class Routes {
  static const String splash = '/';
  static const String home = 'home';
  static const String editing = 'editing';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    home: (context) => const HomePage(),
    editing: (context) => const EditingPage(),
  };
}
