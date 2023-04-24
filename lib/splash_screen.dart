import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:midwest/resources/animations.dart';
import 'package:midwest/resources/images.dart';

import 'auth/user_bloc.dart';

class AuthSplashScreen extends ConsumerStatefulWidget {
  const AuthSplashScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AuthSplashScreenState();
}

class _AuthSplashScreenState extends ConsumerState<AuthSplashScreen> {
  bool showLoginButton = false;
  double scale = 0.95;
  @override
  void initState() {
    super.initState();
    showButtons();
  }

  Future<void> showButtons() async {
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) {
      setState(() {
        showLoginButton = true;
      });
    }
    await Future.delayed(const Duration(milliseconds: 20));
    if (mounted) {
      setState(() {
        scale = 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final UserBloc userBloc = ref.watch(userProvider.notifier);

    return Scaffold(
        backgroundColor: const Color.fromARGB(174, 135, 137, 199),
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
            ),
            Image.asset(
              Images.midWestLogo,
              height: 130,
              width: 130,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Mid-West\nUniversity',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Center(
              child: Lottie.asset(
                Animations.books,
                width: 200,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            if (showLoginButton)
              AnimatedScale(
                scale: scale,
                duration: const Duration(milliseconds: 300),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 32),
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        await userBloc.signInWithGoogle();
                      } catch (e) {
                        //show snackbar
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text("Error Logging In"),
                        ));
                      }
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.black26;
                          }
                          return Colors.white;
                        },
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(300.0),
                          side: const BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/706px-Google_%22G%22_Logo.svg.png",
                            height: 28,
                            width: 28,
                          ),
                          const Expanded(
                            child: Center(
                              child: Text(
                                "Continue with Google",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black87),
                              ),
                            ),
                          ),
                          const SizedBox(width: 28),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
          ]),
        ));
  }
}
