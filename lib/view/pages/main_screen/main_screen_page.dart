import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/elegant_appbar_component.dart';
import 'package:layout_challenge/view/design/colors.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backGroundColor),
      appBar: const ElegantAppBar(),
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
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
    );
  }
}

