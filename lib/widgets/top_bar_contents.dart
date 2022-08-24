import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'constant_elements/top_bar_element.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  const TopBarContents({Key? key, required this.opacity}) : super(key: key);

  @override
  State<TopBarContents> createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.white.withOpacity(widget.opacity),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: screenSize.width / 4),
                    const Text(
                      'Author',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3,
                      ),
                    ),
                    SizedBox(width: screenSize.width / 15),
                    TopBarElement(text: 'Home', onTap: () {}),
                    SizedBox(width: screenSize.width / 15),
                    TopBarElement(text: 'About', onTap: () {}),
                    SizedBox(width: screenSize.width / 15),
                    TopBarElement(text: 'History', onTap: () {}),
                    SizedBox(width: screenSize.width / 15),
                    TopBarElement(text: 'Contact', onTap: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
