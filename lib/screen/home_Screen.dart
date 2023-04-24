import 'package:firebase_auth/firebase_auth.dart';
// import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../auth/user_bloc.dart';
import '../splash_screen.dart';

class HomeScreen extends ConsumerWidget {
  HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UserBloc userBloc = ref.watch(userProvider.notifier);

    final Map college = {};
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Title",
        ),
        actions: [
          IconButton(
              onPressed: () {
                userBloc.signOut();
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(child: Text("hi")),
    );
  }
}
