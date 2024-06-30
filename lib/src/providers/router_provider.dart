import 'package:flutter_web_course/src/pages/home/home_page.dart';
import 'package:go_router/go_router.dart';

final GoRouter routerProvider = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
