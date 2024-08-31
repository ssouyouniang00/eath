import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(Eath());
}

class Eath extends StatelessWidget {
  const Eath({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
