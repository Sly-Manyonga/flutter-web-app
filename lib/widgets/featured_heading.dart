import 'package:flutter/material.dart';

class FeaturedHeading extends StatefulWidget {
  final Size screenSize;
  const FeaturedHeading({Key? key, required this.screenSize}) : super(key: key);

  @override
  State<FeaturedHeading> createState() => _FeaturedHeadingState();
}

class _FeaturedHeadingState extends State<FeaturedHeading> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: widget.screenSize.height * 0.06,
        left: widget.screenSize.width / 15,
        right: widget.screenSize.width / 15,
      ),
      child: (widget.screenSize.width < 800)
          ? Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Featured',
                      style: TextStyle(
                        fontSize: 36,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF077bd7),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Clue of the wooden cottage',
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Featured',
                  style: TextStyle(
                    fontSize: 36,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF077bd7),
                  ),
                ),
                Expanded(
                    child: Text(
                  'Clue of the wooden cottage',
                  textAlign: TextAlign.end,
                )),
              ],
            ),
    );
  }
}
