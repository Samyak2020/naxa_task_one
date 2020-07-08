import 'package:flutter/material.dart';
import 'package:naxa_task_one/utilities/constants.dart';

class ChipsWidget extends StatefulWidget {
  ChipsWidget({@required this.label, @required this.quantity});

  final String label;
  final String quantity;

  @override
  _ChipsWidgetState createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  bool _isSelected = false;
  Color inactiveColor = kInactiveColor;
  Color activeColor = kActiveColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 8.0),
      child: FilterChip(
        backgroundColor: Colors.white,
        labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
        selected: _isSelected,
        label: Text(
          '${widget.label}(${widget.quantity})',
        ),
        labelStyle: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: _isSelected ? activeColor : inactiveColor,
        ),
        onSelected: (value) {
          setState(() {
            _isSelected = value;
          });
        },
        selectedColor: Color(0xffE2CBFF),
        checkmarkColor: activeColor,
      ),
    );
  }
}
