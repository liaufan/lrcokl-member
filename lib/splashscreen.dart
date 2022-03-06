import 'package:flutter/material.dart';
import 'helpers/constant.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _imageSplash(size),
              Positioned(
                  bottom: 20,
                  child: Text(
                    'LRCO \u00a9 ' + DateTime.now().year.toString(),
                    style: const TextStyle(fontSize: 11),
                  )),
            ],
          )),
    );
  }

  Widget _imageSplash(Size size) {
    return Image.asset(
      'assets/logos/main.jpg',
      height: 150,
      width: size.width * 0.6,
    );
  }
}
