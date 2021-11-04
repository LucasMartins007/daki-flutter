import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/components/CustomAppBar.dart';
import 'package:flutter_web/components/BottomBar.dart';
import 'package:flutter_web/components/TabBar.dart';
import 'package:flutter_web/components/TopAppBar.dart';
import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/pages/tabs/HomeTab.dart';
import 'package:flutter_web/utils/SizeHelper.dart';

class Home extends StatefulWidget {
  final UserModel? user;
  Home({Key? key, this.user}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    print(screenSize);

    return Scaffold(
      appBar: CustomAppBar(widget.user)
          .getCustomAppBar(screenSize, _controller, true),
      body: TabBarView(
        controller: _controller,
        children: [
          new HomeTab(),
          new Text("teste2"),
          new Text("teste3"),
          new Text("teste4"),
          new Text("teste5"),
          new Text("teste6"),
        ],
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
