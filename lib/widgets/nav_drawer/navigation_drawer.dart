import 'package:flutter/material.dart';
import 'package:anurag_website/routing/route_names.dart';
import 'package:anurag_website/widgets/nav_drawer/navigation_drawer_footer.dart';
import 'navigation_drawer_header.dart';
import 'drawer_item.dart';


class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [BoxShadow(color: Colors.white12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          DrawerItem('Home', Icons.home, HomeRoute),
          DrawerItem('About', Icons.person, AboutRoute),
          DrawerItem('Experience', Icons.work, ExperienceRoute),
          DrawerItem('Projects', Icons.palette, ProjectRoute),
          NavigationDrawerFooter(),
        ],
      ),
    );
  }
}