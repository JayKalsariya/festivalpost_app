import 'package:festivalpost_app/utils/headers.dart';

Column textAlign({
  required void Function() getSetState,
}) {
  return Column(
    children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Text Alignment',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Globals.instance.t_align = TextAlign.left;
              getSetState();
            },
            child: Icon(Icons.format_align_left, color: Colors.black),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xffFEC7B4),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Globals.instance.t_align = TextAlign.center;
              getSetState();
            },
            child: Icon(Icons.format_align_center, color: Colors.black),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xffFEC7B4),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Globals.instance.t_align = TextAlign.right;
              getSetState();
            },
            child: Icon(Icons.format_align_right, color: Colors.black),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Color(0xffFEC7B4),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
