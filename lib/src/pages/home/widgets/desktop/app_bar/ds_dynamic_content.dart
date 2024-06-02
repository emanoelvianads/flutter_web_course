import 'package:flutter/material.dart';

class DsDynamicContent extends StatelessWidget {
  const DsDynamicContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      print('Biggest: ${constraints.biggest} - Smallest: ${constraints.smallest}');
      return Row();
    }));
  }
}
