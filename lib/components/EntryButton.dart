import 'package:flutter/material.dart';

class entryButton extends StatefulWidget {
  const entryButton({Key? key}) : super(key: key);

  @override
  _entryButtonState createState() => _entryButtonState();
}

class _entryButtonState extends State<entryButton> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.canPop(context)
          ? Navigator.popAndPushNamed(context, 'login')
          : Navigator.pushNamed(context, 'login'),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
      ),
      child: Container(
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 7,
                    right: 7,
                    top: 2,
                    bottom: 2,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.amber,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          children: [
                            Text(
                              "Entrar",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
