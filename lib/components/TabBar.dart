import 'package:flutter/material.dart';
import 'package:flutter_web/utils/SizeHelper.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class tabBar extends StatefulWidget {
  final TabController controller;

  const tabBar({Key? key, required this.controller})
      : super(
          key: key,
        );

  @override
  _tabBarState createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double tabSize = sizeHelper.widthHelper(screenSize, 200, 200, 0.5, 45);

    bool isScroollable(Size screenSize) {
      double value = screenSize.width;
      if (value <= 1401) {
        return true;
      }
      return false;
    }

    return TabBar(
      controller: widget.controller,
      labelPadding: EdgeInsets.only(top: 10),
      unselectedLabelColor: Colors.white,
      indicatorColor: Colors.black,
      isScrollable: screenSize.width <= 1500 ? true : false,
      tabs: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tabSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: Colors.black,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Text(
                          "HOME",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tabSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        Icon(
                          LineIcons.tShirt,
                          color: Colors.black,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Text(
                          "VESTUÁRIO",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tabSize,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: EdgeInsets.only(),
                  child: Column(
                    children: [
                      Icon(
                        LineIcons.shoePrints,
                        color: Colors.black,
                        textDirection: TextDirection.rtl,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Column(
                    children: [
                      Text(
                        "CALÇADOS",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tabSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        Icon(
                          LineIcons.glasses,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Text(
                          "ACESSÓRIOS",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tabSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        Icon(
                          LineIcons.tag,
                          color: Colors.black,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Text(
                          "MARCAS",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: tabSize,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Column(
                      children: [
                        Icon(
                          LineIcons.handHoldingUsDollar,
                          color: Colors.black,
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Column(
                      children: [
                        Text(
                          "PROMOÇÕES",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textHeightBehavior: TextHeightBehavior.fromEncoded(3),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
