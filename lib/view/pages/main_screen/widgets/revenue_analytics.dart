import 'package:flutter/material.dart';

import 'package:layout_challenge/view/components/revenue_analytics_tabs.dart';
import 'package:layout_challenge/view/design/assets.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/sale_card_component.dart';

class RevenueAnalytics extends StatefulWidget {
  const RevenueAnalytics({Key? key}) : super(key: key);

  @override
  _RevenueAnalyticsState createState() => _RevenueAnalyticsState();
}

class _RevenueAnalyticsState extends State<RevenueAnalytics> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    'Revenue Analytics',
                    overflow: TextOverflow.clip,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const Spacer(flex: 2),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(8.0),
                      children: [
                        RevenueAnalyticsTabs(
                          title: 'Day',
                          selected: _selectedIndex == 0,
                          onTap: () => setState(() => _selectedIndex = 0),
                        ),
                        RevenueAnalyticsTabs(
                          title: 'Weekly',
                          selected: _selectedIndex == 1,
                          onTap: () => setState(() => _selectedIndex = 1),
                        ),
                        RevenueAnalyticsTabs(
                          title: 'Monthly',
                          selected: _selectedIndex == 2,
                          onTap: () => setState(() => _selectedIndex = 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: GraphImage(
              index: _selectedIndex,
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                SizedBox(
                  width: 200,
                  child: SaleCardComponent(
                    iconBackGroundColor: Colors.white,
                    titleValue: '\$ 1.200',
                    subtitleValue: 'This day',
                    trendingIcon: Icons.trending_up,
                    trendingValue: '1.8%',
                    trendingColor: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: SaleCardComponent(
                    iconBackGroundColor: Colors.white,
                    titleValue: '\$ 1.200',
                    subtitleValue: 'This Week',
                    trendingIcon: Icons.trending_up,
                    trendingValue: '1.8%',
                    trendingColor: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: SaleCardComponent(
                    iconBackGroundColor: Colors.white,
                    titleValue: '\$ 1.200',
                    subtitleValue: 'Previous Week',
                    trendingIcon: Icons.trending_up,
                    trendingValue: '1.8%',
                    trendingColor: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 200,
                  child: SaleCardComponent(
                    iconBackGroundColor: Colors.white,
                    titleValue: '\$ 1.200',
                    subtitleValue: 'This day',
                    trendingIcon: Icons.trending_up,
                    trendingValue: '1.8%',
                    trendingColor: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GraphImage extends StatelessWidget {
  final int index;
  const GraphImage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _getGraphColor(index),
      child: Center(
        child: Text(
          'Graph: $index',
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Color? _getGraphColor(int index) {
    const Map<int, Color> _graphColor = {
      0: Colors.purpleAccent,
      1: Colors.yellow,
      2: Colors.green,
    };

    return _graphColor[index];
  }
}
