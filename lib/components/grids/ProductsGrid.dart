import 'package:flutter/material.dart';

class ProductsGrid extends StatefulWidget {
  final double pageWidth;
  final double containerSize;
  final double cardWidth;
  final double cardHeight;

  const ProductsGrid({
    Key? key,
    required this.pageWidth,
    required this.containerSize,
    required this.cardWidth,
    required this.cardHeight,
  }) : super(key: key);

  @override
  _ProductsGridState createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.white,
            width: widget.containerSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, right: 70),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.white,
            width: widget.containerSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, right: 70),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.white,
            width: widget.containerSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, right: 70),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            color: Colors.white,
            width: widget.containerSize,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20, right: 70),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, right: 20),
                  color: Colors.black38,
                  width: widget.cardWidth,
                  height: widget.cardHeight,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
