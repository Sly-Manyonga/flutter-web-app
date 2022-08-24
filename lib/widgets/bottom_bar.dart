import 'package:flutter/material.dart';

import 'bottom_bar_column.dart';
import 'info_text.dart';

class BottomBar extends StatelessWidget {
  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575E6);

  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
        gradient: LinearGradient(
          colors: [gradientStartColor, gradientEndColor],
          begin: FractionalOffset(0.2, 0.2),
          end: FractionalOffset(1.0, 1.0),
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
      ),

      padding: const EdgeInsets.all(30),
      //color: Colors.blueGrey[900],
      child: (MediaQuery.of(context).size.width < 800)
          ? Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                  ],
                ),
                const Divider(color: Colors.white60),
                const SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    InfoText(
                      type: 'Email',
                      text: 'sk.clevers@gmail.com',
                    ),
                    SizedBox(height: 5),
                    InfoText(
                      type: 'Address',
                      text: '2014, Chinamhora Road, Cherutombo, Marondera - 263',
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(color: Colors.white60),
                const SizedBox(height: 20),
                const Text(
                  'Copyright © 2022 | Sly',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'ABOUT',
                      s1: 'Contact Us',
                      s2: 'About Us',
                      s3: 'Careers',
                    ),
                    const BottomBarColumn(
                      heading: 'HELP',
                      s1: 'Payment',
                      s2: 'Cancellation',
                      s3: 'FAQ',
                    ),
                    const BottomBarColumn(
                      heading: 'SOCIAL',
                      s1: 'Twitter',
                      s2: 'Facebook',
                      s3: 'YouTube',
                    ),
                    Container(
                      color: Colors.white,
                      width: 2,
                      height: 150,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        InfoText(
                          type: 'Email',
                          text: 'sk.clevers@gmail.com',
                        ),
                        SizedBox(height: 5),
                        InfoText(
                          type: 'Address',
                          text: '2014, Chinamhora Road, Cherutombo, Marondera - 263',
                        )
                      ],
                    ),
                  ],
                ),
                const Divider(
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Copyright © 2022 | Sly',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
    );
  }
}
