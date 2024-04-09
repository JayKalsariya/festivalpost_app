import 'package:festivalpost_app/utils/headers.dart';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:festivalpost_app/view/editing_page/components/add_text.dart';
import 'package:festivalpost_app/view/editing_page/components/appbar.dart';
import 'package:festivalpost_app/view/editing_page/components/border.dart';
import 'package:festivalpost_app/view/editing_page/components/editing_tool.dart';
import 'package:festivalpost_app/view/editing_page/components/post.dart';
import 'package:festivalpost_app/view/editing_page/components/post_frame.dart';
import 'package:festivalpost_app/view/editing_page/components/text_align.dart';
import 'package:festivalpost_app/view/editing_page/components/text_color.dart';
import 'package:festivalpost_app/view/editing_page/components/text_style.dart';
import 'package:flutter/rendering.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:share_extend/share_extend.dart';

class EditingPage extends StatefulWidget {
  const EditingPage({super.key});

  @override
  State<EditingPage> createState() => _EditingPageState();
}

class _EditingPageState extends State<EditingPage> {
  @override
  initState() {
    Globals.instance.reset();
    super.initState();
  }

  GlobalKey widgetKey = GlobalKey();

  Future<File> getFileFromWidget() async {
    RenderRepaintBoundary boundary =
        widgetKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
    ui.Image image = await boundary.toImage(
      pixelRatio: 5,
    );
    ByteData? data = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );
    Uint8List list = data!.buffer.asUint8List();

    Directory directory = await getTemporaryDirectory();
    File file = await File(
            "${directory.path}/QA${DateTime.now().millisecondsSinceEpoch}.png")
        .create();
    file.writeAsBytesSync(list);

    return file;
  }

  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    void getSetState() {
      setState(() {});
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: getAppBar(
        onReset: () {
          Globals.instance.reset();
          setState(() {});
        },
        getSetState: () {
          getSetState();
        },
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//Post
            getPost(
              widgetKey: widgetKey,
              data: data,
              context: context,
              getSetState: getSetState,
            ),
            const SizedBox(height: 10),
//Editing Title
            const Text(
              'Editing',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
//Tools
            getTool(getSetState: getSetState),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: IndexedStack(
                  index: Globals.instance.selectedIndex,
                  children: [
//0
                    postFrame(data: data, getSetState: getSetState),
//1
                    textStyle(getSetState: getSetState),
//2
                    addText(getSetState: getSetState),
//3
                    borderRadius(getSetState: getSetState),
//4
                    textColor(context: context, getSetState: getSetState),
//5
                    textAlign(getSetState: getSetState),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffFEC7B4),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: const Color(0xffFFF3C7),
                title: const Text("Options"),
                content: const Text("Select any one option."),
                actions: [
// Share
                  ElevatedButton.icon(
                    onPressed: () async {
                      ShareExtend.share(
                        (await getFileFromWidget()).path,
                        "image",
                      );
                    },
                    icon: const Icon(
                      Icons.share,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Share",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffFEC7B4),
                      ),
                    ),
                  ),
// Save
                  ElevatedButton.icon(
                    onPressed: () async {
                      ImageGallerySaver.saveFile(
                              (await getFileFromWidget()).path,
                              isReturnPathOfIOS: true)
                          .then(
                        (value) {
                          Navigator.pop(context);
                          return ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Saved on Gallery !!"),
                            ),
                          );
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.save,
                      color: Colors.black,
                    ),
                    label: const Text(
                      "Save",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffFEC7B4),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
