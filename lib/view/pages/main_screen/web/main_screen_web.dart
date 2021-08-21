import 'package:flutter/material.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/elegant_appbar_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/recent_activity_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/revenue_analytics.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/sale_card_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/sales_branch_analitycs_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/side_menu_component.dart';

class MainScreenWeb extends StatefulWidget {
  const MainScreenWeb({Key? key}) : super(key: key);

  @override
  _MainScreenWebState createState() => _MainScreenWebState();
}

class _MainScreenWebState extends State<MainScreenWeb> {
  bool openSideMenu = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (openSideMenu)
          const Expanded(child: SideMenu())
        else
          const SizedBox(),
        Expanded(
          flex: 6,
          child: Scaffold(
            appBar: ElegantAppBar(
              menuOnTap: () => setState(() => openSideMenu = !openSideMenu),
            ),
            body: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: const [
                            Expanded(
                              child: SaleCardComponent(
                                icon: Icon(Icons.local_mall),
                                titleValue: '2431',
                                subtitleValue: 'Number of Sales',
                                iconBackGroundColor: Colors.indigo,
                                trendingIcon: Icons.trending_up,
                                trendingColor: Colors.green,
                                trendingValue: '1.8%',
                              ),
                            ),
                            Expanded(
                              child: SaleCardComponent(
                                icon: Icon(Icons.equalizer),
                                titleValue: '\$ 24.301',
                                subtitleValue: 'Sales Revenue',
                                iconBackGroundColor: Colors.lightBlue,
                                trendingIcon: Icons.trending_up,
                                trendingColor: Colors.green,
                                trendingValue: '2.0%',
                              ),
                            ),
                            Expanded(
                              child: SaleCardComponent(
                                icon: Icon(Icons.attach_money),
                                titleValue: '1234',
                                subtitleValue: 'Averige Price',
                                iconBackGroundColor: Colors.greenAccent,
                                trendingIcon: Icons.trending_down,
                                trendingColor: Colors.red,
                                trendingValue: '0.2%',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: RevenueAnalytics(),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                width: 0.1,
                                color: Theme.of(context).accentColor,
                              ),
                            ),
                            child: const RecentActivityComponent(),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(width: 0.1),
                            ),
                            child: const SalesBranchAnalytics(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
