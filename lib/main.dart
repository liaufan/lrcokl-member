import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lrcokl/get-initializer.dart';
import 'package:lrcokl/ui/home.dart';
import 'package:lrcokl/ui/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBj8ZUjuoTvqxltfPx1svADCtMZ05FKVLY",
          appId: "1:1081503252980:web:6baa414dfe8e0129c3b9a1",
          messagingSenderId: "1081503252980",
          projectId: "lrcokl-6dee6",
          authDomain: "lrcokl-6dee6.firebaseapp.com",
          storageBucket: "lrcokl-6dee6.appspot.com",
          measurementId: "G-4T8VG2DRQR"));
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
          page: () => LoginScreen(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: "/home",
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
