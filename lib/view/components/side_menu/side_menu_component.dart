import 'package:flutter/material.dart';
import 'package:layout_challenge/main.dart';
import 'package:layout_challenge/view/components/side_menu/side_menu_button_component.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset('assets/images/logo.png'),
              const Spacer(),
              SideMenuButton(
                icon: Icons.dashboard,
                title: "DashBoard",
                onTap: () {},
              ),
              SideMenuButton(
                icon: Icons.analytics,
                title: "Analytics",
                onTap: () {},
              ),
              SideMenuButton(
                icon: Icons.report,
                title: "Reports",
                onTap: () {},
              ),
              SideMenuButton(
                icon: Icons.calendar_today,
                title: "Calendar",
                onTap: () {},
              ),
              SideMenuButton(
                icon: Icons.chat,
                title: "Chat ",
                onTap: () {},
              ),
              SideMenuButton(
                icon: Icons.contacts,
                title: "Contacts",
                onTap: () {},
              ),
              SideMenuButton(
                icon: !MyApp.darkThemeNotifier.value
                    ? Icons.dark_mode
                    : Icons.light_mode,
                title: "Theme",
                onTap: () {
                  MyApp.darkThemeNotifier.value =
                      !MyApp.darkThemeNotifier.value;
                },
              ),
              const Spacer(flex: 7),
              SideMenuButton(
                icon: Icons.settings,
                title: "Settings",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
