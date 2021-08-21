import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:layout_challenge/view/design/assets.dart';

class AccountPreview extends StatelessWidget {
  const AccountPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 35,
          height: 35,
          child: SvgPicture.asset(DesingAssets.femaleAvatar),
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
                    "Katirina",
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
