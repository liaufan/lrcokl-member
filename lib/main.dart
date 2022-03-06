import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lrcokl/get-initializer.dart';
import 'package:lrcokl/splashscreen.dart';
import 'package:lrcokl/ui/home.dart';

void main() {
  GetInitializer().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Lee Rubber Chinese Orchestra 吉隆坡南益校友会华乐团',
      theme: ThemeData(
        primarySwatch: white,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => HomeScreen(),
          transition: Transition.noTransition,
        ),
      ],
      // debugShowCheckedModeBanner: false,
    );
  }
}

const MaterialColor white = MaterialColor(
  0xFFFFFFFF,
  <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  },
);
