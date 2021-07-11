import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/elegant_appbar_component.dart';
import 'package:layout_challenge/view/components/side_menu_button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool openSideMenu = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (openSideMenu)
          Expanded(
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
          )
        else
          Container(),
        Expanded(
          flex: 6,
          child: Scaffold(
            appBar: ElegantAppBar(
              menuOnTap: () => setState(() => openSideMenu = !openSideMenu),
            ),
            body: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
