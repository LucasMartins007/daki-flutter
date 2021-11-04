import 'package:flutter/material.dart';
import 'package:flutter_web/components/TopAppBar.dart';
import 'package:flutter_web/components/TabBar.dart';
import 'package:flutter_web/model/UserModel.dart';

class CustomAppBar {
  UserModel? user;

  CustomAppBar(UserModel? user) {
    this.user = user;
  }

  AppBar getCustomAppBar(
      Size screenSize, TabController? _controller, bool showTabBar) {
    return AppBar(
      shadowColor: Colors.white,
      toolbarHeight: screenSize.height > 85 ? (showTabBar ? 125 : 100) : 0,
      backgroundColor: Color.fromARGB(1000, 32, 32, 32),
      title: TopAppBar(
        user: this.user,
      ),
      bottom: showTabBar
          ? PreferredSize(
              preferredSize: Size.fromWidth(screenSize.width),
              child: Container(
                padding: EdgeInsets.only(
                    left: screenSize.width / 10, right: screenSize.width / 10),
                color: Colors.white,
                child: tabBar(
                  controller: _controller!,
                ),
              ),
            )
          : null,
      automaticallyImplyLeading: false,
    );
  }
}
