import 'package:flutter/material.dart';
import 'package:flutter_web_course/src/core/extensions/utilities_extension.dart';
import 'package:gap/gap.dart';
import 'package:remixicon/remixicon.dart';

class MbAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MbAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: context.color.surfaceContainerLow,
      title: const Text(
        'Flutter',
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Remix.search_2_line)),
            const Gap(8),
            IconButton(
                onPressed: () {}, icon: const Icon(Remix.shopping_bag_2_line)),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
