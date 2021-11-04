import 'package:flutter/material.dart';
import 'package:flutter_web/components/carrousel/CustomCarrousel.dart';
import 'package:flutter_web/components/grids/ProductsGrid.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';
import 'package:flutter_web/decorations/CustomTextStyle.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double pageWidth = screenSize.width / 1.1;
    double containerSize = pageWidth / 1.1;
    double cardWidth = containerSize / 3.5;
    double cardHeight = screenSize.height / 4;
    double carrouselHeight = screenSize.height / 2;

    return SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.black12,
          width: screenSize.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      padding: EdgeInsets.only(top: 10, bottom: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        width: containerSize,
                                        child: CustomCarrousel(
                                          height: carrouselHeight,
                                          screenSize: screenSize,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ProductsGrid(
                    pageWidth: pageWidth,
                    containerSize: containerSize,
                    cardWidth: cardWidth,
                    cardHeight: cardHeight,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
