import 'package:flutter/material.dart';

import 'package:layout_challenge/view/components/recent_activity/recent_activity_list_tile_component.dart';

class RecentActivityComponent extends StatelessWidget {
  final bool small;
  const RecentActivityComponent({
    Key? key,
    this.small = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: FittedBox(
                    child: Text(
                      'Recent Activity',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView(
              children: const [
                RecentActivitysTile(
                  leadingIcon: Icons.sentiment_very_satisfied,
                  titleText: 'Added an interest',
                  highlightedTitleText: 'Volunteer Activities',
                  day: 'Today',
                  hour: '3.12 PM',
                ),
                RecentActivitysTile(
                  leadingIcon: Icons.chat,
                  titleText: 'Responded to need',
                  highlightedTitleText: 'In-Kind Opportunity',
                  day: 'Today',
                  hour: '3.24 PM',
                ),
                RecentActivitysTile(
                  leadingIcon: Icons.sentiment_very_satisfied,
                  titleText: 'Attending the event',
                  highlightedTitleText: 'Extraordinary Event',
                  day: 'Yesterday',
                  hour: '10.12 AM',
                ),
                RecentActivitysTile(
                  leadingIcon: Icons.edit,
                  titleText: 'Created need',
                  highlightedTitleText: 'Volunteer Activities',
                  day: 'Last Week',
                  hour: '10.25 AM',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
