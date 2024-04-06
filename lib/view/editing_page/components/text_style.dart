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
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
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
