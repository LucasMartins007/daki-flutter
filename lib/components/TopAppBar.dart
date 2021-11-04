import 'package:flutter/material.dart';
import 'package:flutter_web/components/EntryButton.dart';
import 'package:flutter_web/components/SearchField.dart';
import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/pages/Home.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class TopAppBar extends StatefulWidget {
  final UserModel? user;

  const TopAppBar({Key? key, this.user}) : super(key: key);

  @override
  _TopAppBarState createState() => _TopAppBarState();
}

class _TopAppBarState extends State<TopAppBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize);

    double heightResolver() {
      return screenSize.height >= 85 ? 100 : 0;
    }

    return PreferredSize(
      preferredSize: Size(screenSize.width, heightResolver()),
      child: Container(
        padding: EdgeInsets.only(
            left: screenSize.width / 20, right: screenSize.width / 20),
        height: heightResolver(),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: [
              screenSize.width < 695
                  ? Container()
                  : GestureDetector(
                      child: Image.asset(
                        'imagens/logo.png',
                        height: 35,
                      ),
                      onTap: () => Navigator.canPop(context)
                          ? Navigator.popAndPushNamed(context, 'home')
                          : Navigator.pushNamed(context, 'home'),
                    ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                          left: screenSize.width < 695 ? 0 : 30),
                      height: 50,
                      child: searchField(
                        backgroudColor: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  widget.user == null
                      ? Container(
                          padding: EdgeInsets.only(left: 35),
                          height: 35,
                          child: Container(child: entryButton()))
                      : Container(
                          child: Text(widget.user!.nome!),
                        ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(
                      LineAwesomeIcons.shopping_cart_arrow_down,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      LineAwesomeIcons.star,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.amber,
                    ),
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
