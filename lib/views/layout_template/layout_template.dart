import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:anurag_website/locator.dart';
import 'package:anurag_website/widgets/nav_drawer/navigation_drawer.dart';
import 'package:anurag_website/routing/route_names.dart';
import 'package:anurag_website/routing/router.dart';
import 'package:anurag_website/services/navigation_service.dart';
import 'package:anurag_website/widgets/navigation_bar/navigation_bar.dart';


class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: Column(children: <Widget>[
          NavigationBar(),
          Expanded(
            child: Navigator(
              key: locator<NavigationService>().navigatorKey,
              onGenerateRoute: generateRoute,
              initialRoute: HomeRoute,
            ),
          )
        ]),
        // body: Stack(
        //   fit: StackFit.expand,
        //   children: <Widget>[
        //     // PictureWidget(),
        //     // Align(
        //     //     alignment: Alignment.bottomCenter,
        //     //     child: Footer()
        //     // ),
        //     CenteredView(
        //       child: Column(children: <Widget>[
        //         NavigationBar(),
        //         Expanded(
        //           child: Navigator(
        //             key: locator<NavigationService>().navigatorKey,
        //             onGenerateRoute: generateRoute,
        //             initialRoute: HomeRoute,
        //           ),
        //         )
        //       ]),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class PictureWidget extends StatelessWidget {
  const PictureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Image(
        image: new AssetImage(""),
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.7),
        colorBlendMode: BlendMode.darken,
      ),
      desktop: Image(
        image: new AssetImage(""),
        fit: BoxFit.cover,
        color: Colors.black87.withOpacity(0.7),
        colorBlendMode: BlendMode.darken,
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        //color: Colors.white,
        child: Text(
          "Designed & Built by Anurag Tekale ???? Flutter",
          style: TextStyle(
            color: Colors.white.withOpacity(0.4),
            letterSpacing: 1.75,
            fontSize: 14.0,
          ),
        ),
      ),
      mobile: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width - 100,
        //color: Colors.white,
        child: Text(
          "",
          style: TextStyle(
            color: Colors.white.withOpacity(0.4),
            letterSpacing: 1.75,
            fontSize: 14.0,
          ),
        ),
      ),
    );
  }
}
