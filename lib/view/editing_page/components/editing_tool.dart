import 'package:festivalpost_app/utils/headers.dart';

Row getTool({
  required void Function() getSetState,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: () {
          Globals.instance.onItemTapped(0);
          getSetState();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xfffabba5),
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(-3, -3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffFFF3C7),
            child: Icon(Icons.filter_frames_rounded),
          ),
        ),
      ),
      const SizedBox(width: 0.5),
      GestureDetector(
        onTap: () {
          Globals.instance.onItemTapped(1);
          getSetState();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xfffabba5),
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(-3, -3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffFFF3C7),
            child: Icon(Icons.abc_rounded),
          ),
        ),
      ),
      const SizedBox(width: 0.5),
      GestureDetector(
        onTap: () {
          Globals.instance.onItemTapped(2);
          getSetState();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xfffabba5),
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(-3, -3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffFFF3C7),
            child: Icon(Icons.text_fields_outlined),
          ),
        ),
      ),
      const SizedBox(width: 0.5),
      GestureDetector(
        onTap: () {
          Globals.instance.onItemTapped(3);
          getSetState();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xfffabba5),
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(-3, -3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffFFF3C7),
            child: Icon(Icons.border_outer_rounded),
          ),
        ),
      ),
      const SizedBox(width: 0.5),
      GestureDetector(
        onTap: () {
          Globals.instance.onItemTapped(4);
          getSetState();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xfffabba5),
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(-3, -3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffFFF3C7),
            child: Icon(Icons.color_lens_rounded),
          ),
        ),
      ),
      const SizedBox(width: 0.5),
      GestureDetector(
        onTap: () {
          Globals.instance.onItemTapped(5);
          getSetState();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              const BoxShadow(
                color: Color(0xfffabba5),
                blurRadius: 3,
                offset: Offset(3, 3),
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.7),
                blurRadius: 3,
                offset: const Offset(-3, -3),
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 22,
            backgroundColor: Color(0xffFFF3C7),
            child: Icon(Icons.align_horizontal_center_rounded),
          ),
        ),
      ),
    ],
  );
}
