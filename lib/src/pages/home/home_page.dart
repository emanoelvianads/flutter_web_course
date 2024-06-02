import 'package:flutter/material.dart';
import 'package:flutter_web_course/src/core/theme/responsive_screen_provider.dart';
import 'package:flutter_web_course/src/pages/home/widgets/desktop/app_bar/ds_app_bar.dart';
import 'package:flutter_web_course/src/pages/home/widgets/mobile/app_bar/mb_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // print(
      //     'Biggest: ${constraints.biggest}, Smallest: ${constraints.smallest}');
      return Scaffold(
        appBar: ResponsiveScreenProvider.isMobile(context) ||
                ResponsiveScreenProvider.isTablet(context)
            ? const MbAppBar()
            : const DsAppBar(),
        drawer: ResponsiveScreenProvider.isMobile(context) ||
                ResponsiveScreenProvider.isTablet(context)
            ? const Drawer()
            : null,
      );
    });
  }
}

/// ResponsiveScreenProvider.isMobile() ? Colors.blue : ResponsiveScreenProvider.isTablet() ? Colors.orange : Colors.red