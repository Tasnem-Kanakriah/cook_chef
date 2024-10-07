import 'package:flutter/material.dart';
import 'views/bottom_bar.dart';
import 'views/change_language_page.dart';
import 'views/login_page.dart';
import 'views/splash_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PageView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            children: [
              const SplashPage(),
              const ChangeLanguagePage(),
              LogInPage(),
              const BottomBar(),
            ],
          ),
        ));
  }
}
