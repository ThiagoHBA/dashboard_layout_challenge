import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/search_bar_component.dart';
import 'package:layout_challenge/view/design/colors.dart';

import 'account_preview_component.dart';

class ElegantAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ElegantAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(backGroundColor),
      leading: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(
            Icons.menu,
            color: Color(iconColor),
          ),
          Text(
            "Dashboard",
            style: TextStyle(
              color: Color(titleTextColor),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      leadingWidth: 180,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          SearchBar(),
        ],
      ),
      actions: [
        SizedBox(
          width: 250,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(
                Icons.info,
                color: Color(iconColor),
              ),
              Icon(
                Icons.notifications,
                color: Color(iconColor),
              ),
              AccountPreview(),
            ],
          ),
        ),
      ],
    );
  }
}
