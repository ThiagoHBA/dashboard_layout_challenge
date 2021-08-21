import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/revenue_analytics/revenue_analytics_tabs.dart';
import 'package:layout_challenge/view/components/sale_card/sale_card_component.dart';

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
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Revenue Analytics',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Row(
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
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
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
