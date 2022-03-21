import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lrcokl/controllers/authentication.controller.dart';

class LoginScreen extends StatelessWidget {
  final AuthenticationController authenticationController = Get.find();
  LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Image.asset(
          'assets/logos/main.jpg',
          height: 110,
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            tooltip: '',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            authenticationController.signInWithGoogle();
          },
          child: const Text("login with google"),
        ),
      ),
    );
  }
}
