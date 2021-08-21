import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/elegant_app_bar/elegant_appbar_component.dart';
import 'package:layout_challenge/view/components/recent_activity/recent_activity_component.dart';
import 'package:layout_challenge/view/components/sale_card/sale_card_component.dart';
import 'package:layout_challenge/view/components/sales_branch_analitycs/sales_branch_analitycs_component.dart';
import 'package:layout_challenge/view/components/side_menu/side_menu_component.dart';

class MainScreenTablet extends StatefulWidget {
  const MainScreenTablet({Key? key}) : super(key: key);

  @override
  _MainScreenTabletState createState() => _MainScreenTabletState();
}

class _MainScreenTabletState extends State<MainScreenTablet> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final _mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      key: _key,
      appBar: ElegantAppBar(
        menuOnTap: () => _key.currentState!.openDrawer(),
        small: _mediaSize.width <= 760,
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 220,
                              child: SaleCardComponent(
                                icon: Icon(
                                  Icons.local_mall,
                                  color: Colors.white,
                                ),
                                titleValue: '2431',
                                subtitleValue: 'Number of Sales',
                                iconBackGroundColor: Colors.indigo,
                                trendingIcon: Icons.trending_up,
                                trendingColor: Colors.green,
                                trendingValue: '1.8%',
                              ),
                            ),
                            SizedBox(
                              width: 220,
                              child: SaleCardComponent(
                                icon: Icon(
                                  Icons.equalizer,
                                  color: Colors.white,
                                ),
                                titleValue: '\$ 24.301',
                                subtitleValue: 'Sales Revenue',
                                iconBackGroundColor: Colors.lightBlue,
                                trendingIcon: Icons.trending_up,
                                trendingColor: Colors.green,
                                trendingValue: '2.0%',
                              ),
                            ),
                            SizedBox(
                              width: 220,
                              child: SaleCardComponent(
                                icon: Icon(
                                  Icons.attach_money,
                                  color: Colors.white,
                                ),
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
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.red,
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
                      flex: 3,
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
    );
  }
}
