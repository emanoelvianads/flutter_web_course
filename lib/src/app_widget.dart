import 'package:flutter/material.dart';
import 'package:flutter_web_course/src/pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: 'Flutter Web Course',
      initialRoute: '/home_page',
      routes: {
        '/home_page': (context) => const HomePage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
