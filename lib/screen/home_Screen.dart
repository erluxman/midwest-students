import 'package:firebase_auth/firebase_auth.dart';
import 'package:midwest/screen/semester.dart';
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

import '../splash_screen.dart';
import '../widget/cards.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              imageCrouser(),
              GridView.count(
                crossAxisCount: 2,
                primary: false,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                shrinkWrap: true,
                children: [
                  CommonCard(
                    title: '${college['contact']}',
                    imageofCard: '${college['imgs']}',
                    onTap: () {},
                  ),
                  CommonCard(
                    title: '${college['semester']}',
                    imageofCard: '${college['imgs']}',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Semester(college)));
                    },
                  ),
                  CommonCard(
                    title: '${college['syllabus']}',
                    imageofCard: '${college['imgs']}',
                  ),
                  CommonCard(
                    title: '${college['name']}',
                    imageofCard: '${college['imgs']}',
                    onTap: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget imageCrouser() => SizedBox(
        height: 260.0,
        child: Stack(
          children: [
            Text("Hello World")
            // Carousel(
            //   boxFit: BoxFit.cover,
            //   borderRadius: true,
            //   dotSize: 6.0,
            //   dotIncreasedColor: Colors.black,
            //   dotBgColor: Colors.transparent,
            //   indicatorBgPadding: 2.9,
            //   dotVerticalPadding: 2.9,
            //   animationDuration: const Duration(microseconds: 200),
            //   images: [
            //     Image.network(
            //       '${college['imgs']}',
            //       fit: BoxFit.cover,
            //     ),
            //     Image.network(
            //       '${college['imgs']}',
            //       fit: BoxFit.cover,
            //     ),
            //     Image.network(
            //       '${college['imgs']}',
            //       fit: BoxFit.cover,
            //     ),
            //   ],
            // ),
          ],
        ),
      );
}
