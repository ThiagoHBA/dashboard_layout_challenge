import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/elegant_app_bar/elegant_appbar_component.dart';
import 'package:layout_challenge/view/components/recent_activity/recent_activity_component.dart';
import 'package:layout_challenge/view/components/sale_card/sale_card_component.dart';
import 'package:layout_challenge/view/components/sales_branch_analitycs/sales_branch_analitycs_component.dart';
import 'package:layout_challenge/view/components/side_menu/side_menu_component.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool openSideMenu = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (openSideMenu) const SideMenu() else const SizedBox(),
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
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            SaleCardComponent(
                              icon: Icon(
                                Icons.local_mall,
                                color: Colors.white,
                              ),
                              titleValue: '2431',
                              subtitleValue: 'Number of Sales',
                              iconBackGroundColor: Colors.indigo,
                              trendingIcon: Icon(
                                Icons.trending_up,
                                color: Colors.green,
                              ),
                              trendingValue: Text(
                                '1.8%',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            SaleCardComponent(
                              icon: Icon(
                                Icons.equalizer,
                                color: Colors.white,
                              ),
                              titleValue: '\$ 24.301',
                              subtitleValue: 'Sales Revenue',
                              iconBackGroundColor: Colors.lightBlue,
                              trendingIcon: Icon(
                                Icons.trending_up,
                                color: Colors.green,
                              ),
                              trendingValue: Text(
                                '2.0%',
                                style: TextStyle(color: Colors.green),
                              ),
                            ),
                            SaleCardComponent(
                              icon: Icon(
                                Icons.attach_money,
                                color: Colors.white,
                              ),
                              titleValue: '1234',
                              subtitleValue: 'Averige Price',
                              iconBackGroundColor: Colors.greenAccent,
                              trendingIcon: Icon(
                                Icons.trending_down,
                                color: Colors.red,
                              ),
                              trendingValue: Text(
                                '0.2%',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ],
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
                            child: Row(),
                          ),
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
                              border: Border.all(width: 0.1),
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
