import 'package:flutter/material.dart';

class RecentActivitysTile extends StatelessWidget {
  final IconData leadingIcon;
  final String titleText;
  final String highlightedTitleText;
  final String day;
  final String hour;
  const RecentActivitysTile({
    Key? key,
    required this.leadingIcon,
    required this.titleText,
    required this.highlightedTitleText,
    required this.day,
    required this.hour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5),
      leading: Column(
        children: [
          const Expanded(
            child: VerticalDivider(),
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.lightBlue[50],
            ),
            child: Center(
              child: Icon(leadingIcon),
            ),
          ),
          const Expanded(
            child: VerticalDivider(),
          ),
        ],
      ),
      title: RichText(
        text: TextSpan(
          children: [
            TextSpan(
                text: titleText, style: Theme.of(context).textTheme.subtitle2),
            TextSpan(
              text: ': "$highlightedTitleText"',
              style: Theme.of(context).textTheme.caption,
            )
          ],
        ),
      ),
      subtitle: Text(
        '$day . $hour',
        style: Theme.of(context).textTheme.caption,
      ),
    );
  }
}
