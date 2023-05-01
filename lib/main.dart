import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:midwest/auth/user_bloc.dart';
import 'package:midwest/screen/collage_selecting_screen.dart';
import 'package:midwest/screen/home_Screen.dart';

import 'package:midwest/splash_screen.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'auth/model/midwest_student.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends ConsumerWidget with WidgetsBindingObserver {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MidwestStudent? student = ref.watch(userProvider);
    if (student == null || student is StudentError) {
      return const AuthSplashScreen();
    }
    final info = student as StudentData;

    if (info.course == null || student.faculty == null) {
      return const CollageSelectingScreen();
    }
    return const HomeScreen();
  }
}
