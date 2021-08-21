import 'package:flutter/material.dart';
import 'package:layout_challenge/view/pages/main_screen/mobile/main_screen_mobile.dart';
import 'package:layout_challenge/view/pages/main_screen/tablet/main_screen_tablet.dart';
import 'package:layout_challenge/view/pages/main_screen/web/main_screen_web.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MainScreenPage extends StatelessWidget {
  const MainScreenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      breakpoints: const ScreenBreakpoints(
        tablet: 580,
        watch: 150,
        desktop: 1010,
      ),
      mobile: const MainScreenMobile(),
      tablet: const MainScreenTablet(),
      desktop: const MainScreenWeb(),
      watch: Container(color: Colors.purple),
    );
  }
}
