import 'package:flutter/material.dart';
import 'package:anurag_website/Colors/colors.dart';
import 'package:anurag_website/widgets/navigation_bar/navbar_logo.dart';


class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            highlightColor: Colors.teal,
            color: Coolors.accentColor.withOpacity(0.6),
            iconSize: 35,
            onPressed: () {
              Scaffold.of(context).openDrawer();
              },
          ),
          NavBarLogo()
        ],
      ),
    );
  }
}