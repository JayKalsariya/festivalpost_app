import 'package:festivalpost_app/utils/headers.dart';
import 'package:flutter/cupertino.dart';

AppBar getAppBar({
  required void Function() onReset,
  required void Function() getSetState,
  required BuildContext context,
}) {
  return AppBar(
    backgroundColor: const Color(0xffFFF3C7),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
        getSetState();
      },
      icon: const Icon(CupertinoIcons.back),
    ),
    title: const Text("Editing"),
    actions: [
      IconButton(
        onPressed: onReset,
        icon: const Icon(Icons.refresh),
      ),
    ],
  );
}
