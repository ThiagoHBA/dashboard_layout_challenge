import 'package:flutter/material.dart';
import 'package:layout_challenge/view/design/colors.dart';

class AccountPreview extends StatelessWidget {
  const AccountPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(
                child: Center(
                  child: Text(
                    "Aaron Stanley",
                    style: TextStyle(
                      color: Color(titleTextColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    "Sales Manager",
                    style: TextStyle(
                      color: Color(commonTextColor),
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
