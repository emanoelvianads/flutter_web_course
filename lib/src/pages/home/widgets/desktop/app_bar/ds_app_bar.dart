import 'package:flutter/material.dart';
import 'package:flutter_web_course/src/core/extensions/utilities_extension.dart';
import 'package:flutter_web_course/src/pages/home/widgets/desktop/app_bar/ds_dynamic_content.dart';
import 'package:gap/gap.dart';
import 'package:remixicon/remixicon.dart';

class DsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 64,
        backgroundColor: context.color.surfaceContainerLow,
        title: Row(
          children: [
            const Text('Flutter'),
            DsDynamicContent(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Remix.shopping_cart_line),
              padding: const EdgeInsets.all(12),
            ),
            const Gap(24),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      fixedSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text('Sign In'),
                ),
                const Gap(16),
                FilledButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                      fixedSize: const Size.fromHeight(40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
