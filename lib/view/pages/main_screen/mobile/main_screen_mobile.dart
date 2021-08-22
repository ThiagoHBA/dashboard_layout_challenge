import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/text_buttom_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/elegant_appbar_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/recent_activity_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/revenue_analytics.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/sale_card_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/sales_branch_analitycs_component.dart';
import 'package:layout_challenge/view/pages/main_screen/widgets/side_menu_component.dart';

class MainScreenMobile extends StatefulWidget {
  const MainScreenMobile({Key? key}) : super(key: key);

  @override
  _MainScreenMobileState createState() => _MainScreenMobileState();
}

class _MainScreenMobileState extends State<MainScreenMobile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: ElegantAppBar(
        menuOnTap: () => _key.currentState!.openDrawer(),
        mobile: true,
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 2,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButtonComponent(
                      selected: _selectedIndex == 0,
                      onTap: () {
                        setState(
                          () => _selectedIndex = 0,
                        );
                      },
                      title: "Recent\nActivity",
                    ),
                    TextButtonComponent(
                      selected: _selectedIndex == 1,
                      onTap: () {
                        setState(
                          () => _selectedIndex = 1,
                        );
                      },
                      title: "Revenue\nAnalytics",
                    ),
                    TextButtonComponent(
                      selected: _selectedIndex == 2,
                      onTap: () {
                        setState(
                          () => _selectedIndex = 2,
                        );
                      },
                      title: "Sales Branch\nAnalytics",
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 0.1),
                    ),
                    child: _getScreenBaseInIndex(_selectedIndex),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget? _getScreenBaseInIndex(int index) {
  const Map<int, Widget> _screenWidgets = {
    0: RecentActivityComponent(),
    1: RevenueAnalytics(),
    2: SalesBranchAnalytics(),
  };

  return _screenWidgets[index];
}
