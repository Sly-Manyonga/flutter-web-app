import 'package:flutter/material.dart';

class FeaturedTiles extends StatefulWidget {
  final Size screenSize;
  const FeaturedTiles({Key? key, required this.screenSize}) : super(key: key);

  @override
  State<FeaturedTiles> createState() => _FeaturedTilesState();
}

class _FeaturedTilesState extends State<FeaturedTiles> {
  final List<String> title = ['Sci-fi', 'Photography', 'Romance'];
  final List<String> assets = [
    'assets/images/test1.jpeg',
    'assets/images/test2.jpeg',
    'assets/images/test3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return
        // return ResponsiveWidget.isSmallScreen(context)
        //     ? Padding(
        //         padding: EdgeInsets.only(top: widget.screenSize.height / 50),
        //         child: SingleChildScrollView(
        //           scrollDirection: Axis.horizontal,
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.start,
        //             children: [
        //               SizedBox(width: widget.screenSize.width / 15),
        //               ...Iterable<int>.generate(assets.length).map(
        //                 (int pageIndex) => Row(
        //                   children: [
        //                     Column(
        //                       crossAxisAlignment: CrossAxisAlignment.start,
        //                       children: [
        //                         SizedBox(
        //                           height: widget.screenSize.width / 2.5,
        //                           width: widget.screenSize.width / 1.5,
        //                           child: ClipRRect(
        //                             borderRadius: BorderRadius.circular(5.0),
        //                             child: Image.asset(
        //                               assets[pageIndex],
        //                               fit: BoxFit.cover,
        //                             ),
        //                           ),
        //                         ),
        //                         Padding(
        //                           padding: EdgeInsets.only(
        //                             top: widget.screenSize.height / 70,
        //                           ),
        //                           child: Text(
        //                             title[pageIndex],
        //                             style: const TextStyle(
        //                               fontSize: 16,
        //                               fontFamily: 'Montserrat',
        //                               fontWeight: FontWeight.w500,
        //                             ),
        //                           ),
        //                         ),
        //                       ],
        //                     ),
        //                     SizedBox(width: widget.screenSize.width / 15),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       )
        //     :
        (widget.screenSize.width < 800)
            ? Padding(
                padding: EdgeInsets.only(top: widget.screenSize.height / 50),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: widget.screenSize.width / 15),
                      ...Iterable<int>.generate(assets.length).map((int pageIndex) => Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: widget.screenSize.height / 2.5,
                                    width: widget.screenSize.width / 1.5,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5.0),
                                      child: Image.asset(
                                        assets[pageIndex],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: widget.screenSize.height / 70),
                                    child: Text(
                                      title[pageIndex],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: widget.screenSize.width / 15)
                            ],
                          )),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: EdgeInsets.only(
                  top: widget.screenSize.height * 0.06,
                  left: widget.screenSize.width / 15,
                  right: widget.screenSize.width / 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...Iterable<int>.generate(assets.length).map((int pageIndex) => Column(
                          children: [
                            SizedBox(
                              height: widget.screenSize.width / 6,
                              width: widget.screenSize.width / 3.8,
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(assets[pageIndex]),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: const Offset(0, 10),
                                        blurRadius: 20,
                                        spreadRadius: 5,
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                    ]),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: widget.screenSize.height / 70),
                              child: Text(
                                title[pageIndex],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              );
  }
}
