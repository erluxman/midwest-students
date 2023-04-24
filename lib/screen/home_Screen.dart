import 'package:firebase_auth/firebase_auth.dart';
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../splash_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Map college = {};
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Title",
        ),
        actions: [
          IconButton(
              onPressed: () {
                // ignore: avoid_print
                print("Logout");
                //Firebase logout
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) {
                  return const AuthSplashScreen();
                }), (route) => false);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(child: Text("hi")),
    );
  }
}
