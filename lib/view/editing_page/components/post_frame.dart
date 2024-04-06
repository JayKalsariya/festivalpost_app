import 'package:festivalpost_app/utils/headers.dart';

SingleChildScrollView postFrame({
  required Map data,
  required Function() getSetState,
}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...List.generate(
          data['img'].length,
          (index) => GestureDetector(
            onTap: () {
              Globals.instance.selectedImage = data['img'][index];
              Globals.instance.isSelected = true;
              getSetState();
            },
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                border: Globals.instance.selectedImage == data['img'][index]
                    ? Border.all(width: 3, color: const Color(0xfffabba5))
                    : null,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage(
                    data['img'][index],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
