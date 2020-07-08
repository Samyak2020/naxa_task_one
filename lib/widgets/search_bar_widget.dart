import 'package:flutter/material.dart';
import 'package:naxa_task_one/utilities/constants.dart';

class SearchBarWidget extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuerySize = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: mediaQuerySize.height * 0.21),
      margin: EdgeInsets.symmetric(horizontal: mediaQuerySize.width * 0.075),
      child: Material(
        borderRadius: BorderRadius.circular(25.0),
        elevation: 0.0,
        color: Colors.white,
        child: TextField(
          style: theme.textTheme.headline3.copyWith(fontSize: 18.0),
          cursorColor: kHeadline3Color,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kBorderColor, width: 0.7),
              borderRadius: BorderRadius.circular(25.0),
            ),
            fillColor: Colors.white,
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(left: 25.0, top: 12.0),
            hintText: 'Search',
            hintStyle: theme.textTheme.headline3.copyWith(fontSize: 18.0),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: MediaQuery.of(context).size.width * 0.065,
                  color: kHeadlineColors,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
