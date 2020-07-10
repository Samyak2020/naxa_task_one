import 'package:flutter/material.dart';
import 'package:naxa_task_one/list_of_items.dart';
import 'package:naxa_task_one/utilities/constants.dart';
import 'package:naxa_task_one/widgets/app_bar.dart';
import 'package:naxa_task_one/widgets/bottom_nav_bar.dart';
import 'package:naxa_task_one/widgets/chips_row.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: theme.backgroundColor,
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: kHeadlineColors,
          size: 20.0,
        ),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BtmNavBar(),
      body: Column(
        children: <Widget>[
          Expanded(flex: 7, child: AppBarWidget()),
          Expanded(flex: 5, child: ChipsRow()),
          Expanded(flex: 11, child: ListOfItems()),
        ],
      ),
    );
  }
}
