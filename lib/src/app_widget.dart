import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_web_course/src/providers/router_provider.dart';
import 'package:flutter_web_course/src/providers/theme_provider.dart';

class AppWidget extends ConsumerWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(ThemeProvider.provider);
    
    return MaterialApp.router(
      routerConfig: routerProvider,
      title: 'Responsive Flutter Web',
      themeMode: themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    );
  }
}