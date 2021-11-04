import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/decorations/CardDecoration.dart';

class CustomCarrousel extends StatefulWidget {
  final double height;
  final Size screenSize;

  const CustomCarrousel({
    Key? key,
    required this.height,
    required this.screenSize,
  }) : super(key: key);

  @override
  _CustomCarrouselState createState() => _CustomCarrouselState();
}

class _CustomCarrouselState extends State<CustomCarrousel> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List cardList = [
      Column(
        children: [
          Expanded(
              child: Container(
            height: widget.screenSize.height,
            width: widget.screenSize.width,
            child: Image.asset(
              'imagens/banners/banner_masculine_tshirt.jpg',
              fit: BoxFit.fill,
            ),
          )),
        ],
      ),
      Column(
        children: [
          Expanded(
            child: Container(
              height: widget.screenSize.height,
              width: widget.screenSize.width,
              child: Image.asset(
                'imagens/banners/banner_black_friday.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
            child: Container(
              height: widget.screenSize.height,
              width: widget.screenSize.width,
              child: Image.asset(
                'imagens/banners/banner_feminine_shoes.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
            child: Container(
              height: widget.screenSize.height,
              width: widget.screenSize.width,
              child: Image.asset(
                'imagens/banners/banner_shoes_buy_now.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
            child: Container(
              height: widget.screenSize.height,
              width: widget.screenSize.width,
              child: Image.asset(
                'imagens/banners/banner_tshirt.png',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
      Column(
        children: [
          Expanded(
            child: Container(
              height: widget.screenSize.height,
              width: widget.screenSize.width,
              child: Image.asset(
                'imagens/banners/banner_black_friday.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    ];

    return Column(children: <Widget>[
      CarouselSlider(
        carouselController: _controller,
        items: cardList.map((card) {
          return Builder(builder: (BuildContext context) {
            return Container(
              child: Card(
                child: card,
                semanticContainer: true,
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          pageSnapping: true,
          autoPlay: true,
          enlargeCenterPage: true,
          pauseAutoPlayOnTouch: true,
          viewportFraction: 1,
          aspectRatio: 1.0,
          height: widget.height / 1.2,
          scrollDirection: Axis.horizontal,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          autoPlayInterval: Duration(seconds: 3),
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          autoPlayCurve: Curves.decelerate,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          },
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: cardList.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => _controller.animateToPage(entry.key),
            child: Container(
              width: 36.0,
              height: 12.0,
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: (Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      .withOpacity(_current == entry.key ? 0.9 : 0.4)),
            ),
          );
        }).toList(),
      ),
    ]);
  }
}
