import 'package:festivalpost_app/utils/headers.dart';

Column borderRadius({
  required void Function() getSetState,
}) {
  return Column(
    children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Border Radius',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 10),
      Slider(
        activeColor: const Color(0xffFEC7B4),
        inactiveColor: Colors.white,
        value: Globals.instance.radius,
        onChanged: (value) {
          Globals.instance.radius = value;
          getSetState();
        },
        min: 15,
        max: 45,
      ),
    ],
  );
}
