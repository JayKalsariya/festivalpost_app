import 'package:festivalpost_app/utils/headers.dart';

GridView textStyle({
  required void Function() getSetState,
}) {
  return GridView.count(
    crossAxisCount: 4,
    primary: false,
    children: [
      ...CardFont.values
          .map(
            (e) => Padding(
              padding: const EdgeInsets.all(3.0),
              child: GestureDetector(
                onTap: () {
                  Globals.instance.font = e.name;
                  getSetState();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border:
                        Globals.instance.font == e.name ? Border.all() : null,
                    color: const Color(0xffFFF3C7),
                    borderRadius: BorderRadius.circular(10),
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
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Abc',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: e.name,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    ],
  );
}
