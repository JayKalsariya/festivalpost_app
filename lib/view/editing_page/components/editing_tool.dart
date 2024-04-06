import 'package:festivalpost_app/utils/headers.dart';

Row getTool({
  required void Function() getSetState,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      IconButton.outlined(
        onPressed: () {
          Globals.instance.onItemTapped(0);
          getSetState();
        },
        icon: Icon(Icons.filter_frames_rounded),
      ),
      IconButton.outlined(
        onPressed: () {
          Globals.instance.onItemTapped(1);
          getSetState();
        },
        icon: Icon(Icons.abc_rounded),
      ),
      IconButton.outlined(
        onPressed: () {
          Globals.instance.onItemTapped(2);
          getSetState();
        },
        icon: const Icon(Icons.text_fields_outlined),
      ),
      IconButton.outlined(
        onPressed: () {
          Globals.instance.onItemTapped(3);
          getSetState();
        },
        icon: const Icon(Icons.border_outer_rounded),
      ),
      IconButton.outlined(
        onPressed: () {
          Globals.instance.onItemTapped(4);
          getSetState();
        },
        icon: const Icon(Icons.color_lens_rounded),
      ),
      IconButton.outlined(
        onPressed: () {
          Globals.instance.onItemTapped(5);
          getSetState();
        },
        icon: const Icon(Icons.align_horizontal_center_rounded),
      ),
    ],
  );
}
