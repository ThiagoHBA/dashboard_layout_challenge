import 'package:flutter/material.dart';

import 'package:layout_challenge/view/components/account_preview/account_preview_component.dart';
import 'package:layout_challenge/view/components/search_bar/search_bar_component.dart';

class ElegantAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? menuOnTap;
  final bool small;
  const ElegantAppBar({
    Key? key,
    this.menuOnTap,
    this.small = false,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: menuOnTap,
          ),
          if (!small)
            Text(
              "Dashboard",
              style: Theme.of(context).textTheme.headline5,
            ),
        ],
      ),
      leadingWidth: small ? 50 : 180,
      actions: [
        SizedBox(
          width: 550,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              SearchBar(),
              Icon(
                Icons.info,
              ),
              Icon(
                Icons.notifications,
              ),
              AccountPreview(),
            ],
          ),
        ),
      ],
    );
  }
}
