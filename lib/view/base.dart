import 'package:cokitchen/view/deal.dart';
import 'package:cokitchen/view/explore.dart';
import 'package:cokitchen/view/food.dart';
import 'package:cokitchen/view/order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BaseView extends StatefulWidget {
  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> {
  int _currentIndex = 0;

  List<Widget> _screenWidgetList = [
    FoodScreen(),
    ExploreScreen(),
    OrderScreen(),
    DealScreen()
  ];
  var ts = TextStyle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        elevation: 12,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/bottomNavigation/food.svg',
              color: Color(0xFF919191),
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigation/food.svg',
            ),
            label: "FOOD",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/bottomNavigation/explore.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigation/explore.svg',
              color: Color(0xFFFF0000),
            ),
            label: "EXPLORE",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/bottomNavigation/order.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigation/order.svg',
              color: Color(0xFFFF0000),
            ),
            label: "ORDER",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/bottomNavigation/deal.svg',
            ),
            activeIcon: SvgPicture.asset(
              'assets/images/bottomNavigation/deal.svg',
              color: Color(0xFFFF0000),
            ),
            label: "DEAL",
          ),
        ],
      ),
      body: _screenWidgetList.elementAt(_currentIndex),
    );
  }
}
