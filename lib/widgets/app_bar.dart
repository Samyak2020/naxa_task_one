import 'package:flutter/material.dart';
import 'package:naxa_task_one/utilities/constants.dart';
import 'package:naxa_task_one/widgets/search_bar_widget.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuerySize = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Positioned(
          left: mediaQuerySize.width * 0.58,
          child: Image.asset('assets/vectorkauli.png'),
        ),
        Positioned(
          left: mediaQuerySize.width * 0.04,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  iconSize: 20.0,
                  padding: EdgeInsets.only(right: mediaQuerySize.width * 0.1),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: kHeadlineColors,
                  ),
                ),
                // ),
                SizedBox(height: mediaQuerySize.height * 0.007),
                Padding(
                  padding: EdgeInsets.only(left: mediaQuerySize.width * 0.025),
                  child: Text(
                    'Vegetables',
                    style: theme.textTheme.headline1,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: SearchBarWidget(),
        ),
      ],
    );
  }
}
