import 'package:flutter/material.dart';

class MyPicAboutMobile extends StatelessWidget {
  const MyPicAboutMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: SizedBox(height: 300, width: 300, child: MyPicWidget()),
    );
  }
}

class MyPicWidget extends StatelessWidget {
  const MyPicWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: new AssetImage(""),
      height: 150,
      width: 100,
      fit: BoxFit.fitHeight,
    );
  }
}
