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
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                const BoxShadow(
                  color: Color(0xfffabba5),
                  // spreadRadius: -3,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.7),
                  // spreadRadius: -3,
                  blurRadius: 3,
                  offset: const Offset(-2, -2),
                )
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Globals.instance.t_align = TextAlign.left;
                getSetState();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffFFF3C7),
                ),
              ),
              child: const Icon(Icons.format_align_left, color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                const BoxShadow(
                  color: Color(0xfffabba5),
                  // spreadRadius: -3,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.7),
                  // spreadRadius: -3,
                  blurRadius: 3,
                  offset: const Offset(-2, -2),
                )
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Globals.instance.t_align = TextAlign.center;
                getSetState();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffFFF3C7),
                ),
              ),
              child: const Icon(Icons.format_align_center, color: Colors.black),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                const BoxShadow(
                  color: Color(0xfffabba5),
                  // spreadRadius: -3,
                  blurRadius: 3,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: Colors.white.withOpacity(0.7),
                  // spreadRadius: -3,
                  blurRadius: 3,
                  offset: const Offset(-2, -2),
                )
              ],
            ),
            child: ElevatedButton(
              onPressed: () {
                Globals.instance.t_align = TextAlign.right;
                getSetState();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffFFF3C7),
                ),
              ),
              child: const Icon(Icons.format_align_right, color: Colors.black),
            ),
          ),
        ],
      ),
    ],
  );
}
