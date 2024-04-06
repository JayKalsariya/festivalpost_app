import 'package:festivalpost_app/utils/headers.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFF3C7),
        title: const Text(
          "Festival Post",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SwipeDeck(
          startIndex: 7,
          cardSpreadInDegrees: 10,
          onSwipeLeft: () {},
          widgets: festivals
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      Routes.editing,
                      arguments: e,
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: (Colors.black),
                          image: DecorationImage(
                            image: NetworkImage(e["thumbnail"]),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 25,
                        left: 20,
                        child: Text(
                          e["name"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
