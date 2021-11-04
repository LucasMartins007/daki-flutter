import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_web/model/User.dart';
import 'package:flutter_web/model/UserModel.dart';
import 'package:flutter_web/pages/Home.dart';
import 'package:flutter_web/pages/Login.dart';
import 'package:flutter_web/pages/Register.dart';
import 'package:flutter_web/repositories/UserBindings.dart';
import 'package:flutter_web/repositories/UserController.dart';
import 'package:get/get.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     home: Home(),
  //     title: "Daki Lojas",
  //     initialRoute: '/',
  //     routes: {
  //       'home': (context) => Home(),
  //       'login': (context) => Login(),
  //       'register': (context) => Register(),
  //     },
  //     debugShowCheckedModeBanner: false,
  //     theme: ThemeData(
  //         visualDensity: VisualDensity.comfortable,
  //         unselectedWidgetColor: Colors.amber),
  //   ),
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          scrollbarTheme:
              ScrollbarThemeData(isAlwaysShown: true, interactive: true)),
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      initialRoute: "/home",
      title: "Daki Lojas",
      color: Colors.amber,
      getPages: [
        GetPage(
          name: "/home",
          page: () => Home(),
          title: "Compre na Daki",
        ),
        GetPage(
          name: "/login",
          page: () => Login(),
          title: "Faça seu login",
        ),
        GetPage(
          name: "/register",
          page: () => Register(),
          title: "Faça seu cadastro",
        ),
        GetPage(
          name: "/teste",
          page: () => Teste(),
          title: "Página de teste",
        ),
      ],
    );
  }
}

class Teste extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("teste"),
      ),
      body: controller.obx((state) {
        return ListView.builder(
            itemCount: state.length,
            itemBuilder: (_, index) {
              final UserModel item = state[index];
              return ListTile(
                title: Text(item.nome!),
              );
            });
      }, onError: (error) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(error!),
            TextButton(
              onPressed: () => controller.findUsers(),
              child: Text("Tentar Novamente"),
            ),
          ],
        );
      }),
    );
  }
}
