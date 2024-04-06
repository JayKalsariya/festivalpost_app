import 'package:festivalpost_app/utils/headers.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

Column textColor({
  required BuildContext context,
  required void Function() getSetState,
}) {
  return Column(
    children: [
      const Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Text Color',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const SizedBox(height: 10),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            //Color Picker
            CircleAvatar(
              radius: 20,
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Color Picker"),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: Globals.instance.fcolor,
                            onColorChanged: (value) {
                              Globals.instance.fcolor = value;
                              getSetState();
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("OK"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.colorize),
              ),
            ),
            const SizedBox(width: 4),
            //List of Colors
            ...List.generate(
              18,
              (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () {
                    Globals.instance.fcolor = Colors.primaries[index];
                    getSetState();
                  },
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.primaries[index],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 4),
            //White Circle
            GestureDetector(
              onTap: () {
                Globals.instance.fcolor = Colors.white;
                getSetState();
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(width: 4),
            //Black Circle
            GestureDetector(
              onTap: () {
                Globals.instance.fcolor = Colors.black;
                getSetState();
              },
              child: const CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
