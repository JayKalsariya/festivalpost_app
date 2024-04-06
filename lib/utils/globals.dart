import 'package:festivalpost_app/utils/fonts_enum.dart';
import 'package:festivalpost_app/utils/headers.dart';

class Globals {
  Globals._();

  static final Globals instance = Globals._();

  bool isSelected = false;
  String? selectedImage;
  String? whiteImage =
      "https://wallpapers.com/images/featured/blank-white-background-xbsfzsltjksfompa.jpg";
  int selectedIndex = 0;
  String font = CardFont.roboto.name;
  double radius = 15;
  double fsize = 14;
  double oldScale = 1;
  bool t_on = false;
  Offset xy = Offset(0, 0);
  Color color = Colors.white;
  Color fcolor = Colors.black;
  String text = "";
  int counter = 0;
  TextAlign t_align = TextAlign.center;

  void onItemTapped(int index) {
    selectedIndex = index;
  }

  void reset() {
    isSelected = false;
    selectedImage = null;
    whiteImage =
        "https://wallpapers.com/images/featured/blank-white-background-xbsfzsltjksfompa.jpg";
    selectedIndex = 0;
    font = CardFont.roboto.name;
    radius = 15;
    fsize = 14;
    oldScale = 1;
    t_on = false;
    xy = Offset(0, 0);
    color = Colors.white;
    fcolor = Colors.black;
    String text = "";
    int counter = 0;
    TextAlign t_align = TextAlign.center;
  }
}
