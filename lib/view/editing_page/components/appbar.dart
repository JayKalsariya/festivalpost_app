import 'package:festivalpost_app/utils/headers.dart';

AppBar getAppBar({
  required void Function() onReset,
}) {
  return AppBar(
    backgroundColor: Color(0xffFFF3C7),
    title: Text("Editing"),
    actions: [
      IconButton(
        onPressed: onReset,
        icon: Icon(Icons.refresh),
      ),
    ],
  );
}
