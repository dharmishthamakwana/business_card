import 'package:business_card/screen/view/PDF_SCreen.dart';
import 'package:business_card/screen/view/detail_screen.dart';
import 'package:business_card/screen/view/home_screen.dart';
import 'package:business_card/screen/view/splesh_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'splash',
      theme: ThemeData(
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          // enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomePage(),
        'splash': (context) => const SplashPage(),
        'details': (context) => const Details(),
        'pdf': (context) => const PDF(),
      },
    );
  }
}