import 'package:flutter/material.dart';

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
            children: [
              SizedBox(
                child: Center(
                  child: Text(
                    "Aaron Stanley",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ),
              ),
              SizedBox(
                child: Center(
                  child: Text(
                    "Sales Manager",
                    style: Theme.of(context).textTheme.caption,
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
