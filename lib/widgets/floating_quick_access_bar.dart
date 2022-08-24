import 'package:dbestech__flutter_web_app/widgets/constant_elements/floating_bar_element.dart';
import 'package:dbestech__flutter_web_app/widgets/responsive.dart';
import 'package:flutter/material.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  final Size screenSize;
  const FloatingQuickAccessBar({Key? key, required this.screenSize}) : super(key: key);

  @override
  State<FloatingQuickAccessBar> createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  List<Widget> rowElements = [];

  List<String> items = ['History', 'Science', 'Philosophy', 'Novels'];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny,
  ];

  List<Widget> generateRowElements() {
    rowElements.clear();
    for (int i = 0; i < items.length; i++) {
      Widget elementTile = FloatingBarElement(text: items[i], onTap: () {}, icon: icons[i]);
      Widget spacer = SizedBox(
        height: widget.screenSize.height / 20,
        child: VerticalDivider(
          width: 1,
          color: Colors.blueGrey[100],
        ),
      );
      rowElements.add(elementTile);
      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.60,
          left: ResponsiveWidget.isSmallScreen(context) ? widget.screenSize.width / 12 : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context) ? widget.screenSize.width / 12 : widget.screenSize.width / 5,
        ),
        child: (widget.screenSize.width < 800)
            ? Column(
                children: [
                  for (int i = 0; i < items.length; i++)
                    Padding(
                      padding: EdgeInsets.only(bottom: widget.screenSize.height / 40),
                      child: Card(
                        elevation: 4,
                        child: FloatingBarElement(text: items[i], onTap: () {}, icon: icons[i]),
                      ),
                    ),
                ],
              )
            : Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: generateRowElements(),
                  ),
                ),
              ),
      ),
    );
  }
}
