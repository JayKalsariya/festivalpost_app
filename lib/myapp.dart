import 'package:festivalpost_app/utils/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xffFFF3C7)),
      debugShowCheckedModeBanner: false,
      routes: Routes.routes,
    );
  }
}
