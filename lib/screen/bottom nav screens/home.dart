import 'package:flutter/material.dart';

class HomeScrn extends StatelessWidget {
  const HomeScrn({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 55,
        color: const Color.fromARGB(255, 170, 169, 241),
        child: TextFormField(
          decoration: const InputDecoration(
              suffixIcon: Icon(Icons.search),
              filled: true,
              fillColor: Color.fromARGB(255, 173, 173, 241),
              hintText: "Search.............",
              hintStyle: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Color.fromARGB(255, 116, 112, 112))),
        ),
      ),
    );
  }
}
