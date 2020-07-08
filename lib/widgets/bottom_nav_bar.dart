import 'package:flutter/material.dart';
import 'package:naxa_task_one/utilities/constants.dart';

class BtmNavBar extends StatefulWidget {
  @override
  _BtmNavBarState createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BottomNavigationBar(
      elevation: 0.0,
      currentIndex: _currentIndex,
      backgroundColor: Colors.white,
      selectedIconTheme: theme.iconTheme,
      unselectedIconTheme: IconThemeData(color: kInactiveColor, size: 20.0),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.border_all,
          ),
          title: Container(),
          backgroundColor: Colors.red,
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
          ),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          title: Container(),
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
