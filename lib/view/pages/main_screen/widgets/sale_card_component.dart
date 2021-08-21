import 'package:flutter/material.dart';

class SaleCardComponent extends StatelessWidget {
  final Widget? icon;
  final Color iconBackGroundColor;
  final String titleValue;
  final String subtitleValue;
  final IconData trendingIcon;
  final String trendingValue;
  final Color trendingColor;

  const SaleCardComponent({
    Key? key,
    required this.iconBackGroundColor,
    required this.titleValue,
    required this.subtitleValue,
    required this.trendingIcon,
    required this.trendingValue,
    required this.trendingColor,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 0.1, color: Theme.of(context).accentColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Wrap(
          direction: Axis.vertical,
          alignment: WrapAlignment.end,
          spacing: 10,
          children: [
            if (icon != null)
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
            FittedBox(
              child: Text(
                titleValue,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            FittedBox(
              child: Text(
                subtitleValue,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            FittedBox(
              child: Wrap(
                spacing: 5,
                children: [
                  Icon(
                    trendingIcon,
                    color: trendingColor,
                  ),
                  Text(
                    trendingValue,
                    style: TextStyle(color: trendingColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
