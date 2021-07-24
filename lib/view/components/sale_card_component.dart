import 'package:flutter/material.dart';

class SaleCardComponent extends StatelessWidget {
  final Widget icon;
  final Color iconBackGroundColor;
  final String titleValue;
  final String subtitleValue;
  final Widget trendingIcon;
  final Widget trendingValue;

  const SaleCardComponent({
    Key? key,
    required this.icon,
    required this.iconBackGroundColor,
    required this.titleValue,
    required this.subtitleValue,
    required this.trendingIcon,
    required this.trendingValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 0.1),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: iconBackGroundColor,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: icon,
                  ),
                ),
                Text(
                  titleValue,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  subtitleValue,
                  style: Theme.of(context).textTheme.caption,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    trendingIcon,
                    const SizedBox(width: 5),
                    trendingValue,
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
