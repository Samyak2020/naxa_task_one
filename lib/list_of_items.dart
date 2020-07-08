import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:naxa_task_one/model/list_data.dart';
import 'package:naxa_task_one/utilities/constants.dart';
import 'package:naxa_task_one/widgets/buttons_widget.dart';

class ListOfItems extends StatefulWidget {
  @override
  _ListOfItemsState createState() => _ListOfItemsState();
}

class _ListOfItemsState extends State<ListOfItems> {
  ListItems listItems = ListItems();
  @override
  Widget build(BuildContext context) {
    return getListViewItems();
  }

  Widget getListViewItems() {
    var listview = ListView.builder(
        padding: EdgeInsets.only(top: 5.0, right: 8.0),
        shrinkWrap: true,
        itemCount: products.length,
        itemBuilder: (context, index) {
          var mediaQuerySize = MediaQuery.of(context).size;
          var theme = Theme.of(context);
          return Container(
            padding: EdgeInsets.only(
                bottom: mediaQuerySize.height * 0.1 * 0.35,
                left: mediaQuerySize.height * 0.1 * 0.25,
                right: mediaQuerySize.height * 0.1 * 0.15),
            height: mediaQuerySize.height * 0.21,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Container(
                    // color: Colors.blue,
                    padding: EdgeInsets.fromLTRB(0, 0.0, 15.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image(
                        image: AssetImage(products[index].itemImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          products[index].itemName,
                          style: theme.textTheme.headline4,
                        ),
                        SizedBox(height: mediaQuerySize.height * 0.1 * 0.1),
                        Row(
                          children: <Widget>[
                            Text(
                              products[index].itemPrice,
                              style: theme.textTheme.headline2,
                            ),
                            Text(
                              ' \$/ ${products[index].measureType} ',
                              style: theme.textTheme.headline3,
                            ),
                          ],
                        ),
                        SizedBox(height: mediaQuerySize.height * 0.1 * 0.1),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              CustomBtnWidget(
                                  btnIcons: Icons.favorite_border,
                                  btnIconColor: kInactiveColor,
                                  backgroudBtnColor: Colors.white),
                              SizedBox(width: mediaQuerySize.width * 0.1 * 0.4),
                              CustomBtnWidget(
                                btnIcons: Icons.shopping_cart,
                                btnIconColor: Colors.white,
                                backgroudBtnColor: Color(0xff0BCE83),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
    return listview;
  }
}
