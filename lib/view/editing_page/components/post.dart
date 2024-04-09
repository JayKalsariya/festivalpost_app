import 'package:festivalpost_app/utils/headers.dart';

RepaintBoundary getPost({
  required GlobalKey widgetKey,
  required Map data,
  required BuildContext context,
  required void Function() getSetState,
}) {
  return RepaintBoundary(
    key: widgetKey,
    child: Container(
      height: 350,
      width: 350,
      decoration: BoxDecoration(
        color: const Color(0xffFFF3C7),
        borderRadius: BorderRadius.circular(Globals.instance.radius),
        image: DecorationImage(
          image: NetworkImage(
            Globals.instance.isSelected
                ? Globals.instance.selectedImage!
                : Globals.instance.whiteImage!,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Edit Quote"),
                content: TextFormField(
                  initialValue: data['slogan'],
                  maxLines: 3,
                  onChanged: (val) => Globals.instance.text = val,
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      data['slogan'] = Globals.instance.text;
                      Navigator.pop(context);
                    },
                    child: const Text("Save"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Cancel"),
                  ),
                ],
              );
            },
          ).then((value) => getSetState());
        },
        onPanUpdate: (DragUpdateDetails details) {
          Globals.instance.xy = Globals.instance.xy + details.delta;
          getSetState();
        },
        child: Transform.translate(
          offset: Globals.instance.xy,
          // scale: Globals.instance.fsize,
          child: Visibility(
            visible: Globals.instance.t_on,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                data['slogan'],
                textAlign: Globals.instance.t_align,
                style: TextStyle(
                  fontSize: Globals.instance.fsize,
                  color: Globals.instance.fcolor,
                  fontFamily: Globals.instance.font,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
