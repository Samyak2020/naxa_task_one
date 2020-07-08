import 'package:flutter/material.dart';
import 'package:naxa_task_one/utilities/constants.dart';

class CustomBtnWidget extends StatelessWidget {
  const CustomBtnWidget(
      {this.btnIcons, this.backgroudBtnColor, this.btnIconColor});
  final IconData btnIcons;
  final Color backgroudBtnColor, btnIconColor;

  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;
    return Expanded(
      child: MaterialButton(
        elevation: 0.0,
        color: backgroudBtnColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: kBorderColor,
            width: 0.7,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding:
            EdgeInsets.symmetric(vertical: mediaQuerySize.height * 0.1 * 0.25),
        visualDensity: VisualDensity.compact,
        child: Icon(
          btnIcons,
          color: btnIconColor,
          size: 20.0,
        ),
        onPressed: () {},
      ),
    );
  }
}
