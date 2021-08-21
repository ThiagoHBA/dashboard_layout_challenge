import 'package:flutter/material.dart';
import 'package:layout_challenge/view/components/elegant_app_bar/elegant_appbar_component.dart';
import 'package:layout_challenge/view/components/recent_activity/recent_activity_component.dart';
import 'package:layout_challenge/view/components/sale_card/sale_card_component.dart';
import 'package:layout_challenge/view/components/side_menu/side_menu_component.dart';

class MainScreenMobile extends StatefulWidget {
  const MainScreenMobile({Key? key}) : super(key: key);

  @override
  _MainScreenMobileState createState() => _MainScreenMobileState();
}

class _MainScreenMobileState extends State<MainScreenMobile> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
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
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(15.0),
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(),
                          ),
                        ),
                        child: const Text(
                          'Recent Activity',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(15.0),
                        child: const Text(
                          'Revenue Analytics',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.all(15.0),
                        child: const Text(
                          'Sales Branch Analytics',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
                    child: const RecentActivityComponent(),
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
