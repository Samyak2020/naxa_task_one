import 'package:flutter/material.dart';
import 'package:naxa_task_one/widgets/chips_widget.dart';

class ChipsRow extends StatefulWidget {
  @override
  _ChipsRowState createState() => _ChipsRowState();
}

class _ChipsRowState extends State<ChipsRow> {
  @override
  Widget build(BuildContext context) {
    var mediaQuerySize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: mediaQuerySize.height * 0.02, left: 15.0),
      //color: Colors.red,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: column(),
      ),
    );
  }

  column() {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            ChipsWidget(label: 'Cabbage & lettuce', quantity: '14'),
            ChipsWidget(label: 'Sugar ', quantity: '10'),
            ChipsWidget(label: 'Potato & Tomatoes', quantity: '14'),
            ChipsWidget(label: 'Peppers', quantity: '14'),
          ],
        ),
        Row(
          children: <Widget>[
            ChipsWidget(label: 'Rice & Pulse', quantity: '14'),
            ChipsWidget(label: 'Cucumber & Radish', quantity: '14'),
            ChipsWidget(label: 'Salt ', quantity: '10'),
            ChipsWidget(label: 'Ginger & Garlic', quantity: '14'),
          ],
        ),
      ],
    );
  }
}
