import 'package:flutter/material.dart';
import 'package:anurag_website/Colors/colors.dart';
import 'package:anurag_website/widgets/method/method.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:anurag_website/views/Project/FeatureProjectMobile.dart';
import 'package:anurag_website/extensions/hover_extensions.dart';

class ProjectViewMobile extends StatelessWidget {
  const ProjectViewMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final projectTitle = "--- Some Things I've Built ---"
        .text
        .white
        .xl
        .lineHeight(1.3)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return Container(
      // color: Color(0xff0A192F),
      // height: 7850,
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 2,
      child: Stack(
//          shrinkWrap: true,
//           physics: NeverScrollableScrollPhysics(),
//           addAutomaticKeepAlives: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Align(
                alignment: Alignment.topCenter,
                child: projectTitle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Projects(),
            ),
          ]),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/SatYu26/Catch-Me-Portfolio");
        },
        link: () {
          method.launchURL("https://satyu26.github.io/Catch-Me-Portfolio/");
        },
        projectname: 'Catch Me Portfolio',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/SatYu26/Portfolio-Code-Flutter");
        },
        link: () {
          method.launchURL("https://satyamgoyal.codes");
        },
        projectname: 'Portfolio',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://github.com/SatYu26/Hand-Gesture-Classifier-With-Tensorflow.js");
        },
        link: () {
          method.launchURL(
              "https://github.com/SatYu26/Hand-Gesture-Classifier-With-Tensorflow.js");
        },
        projectname: 'Hand Gesture Classifier',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/SatYu26/Flash-Type");
        },
        link: () {
          method.launchURL("https://satyu26.github.io/Flash-Type/");
        },
        projectname: 'Flash Type',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/SatYu26/WhatImage");
        },
        link: () {
          method.launchURL("https://github.com/SatYu26/WhatImage");
        },
        projectname: 'What Image',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      LimitedBox(
        maxWidth: 150,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Coolors.accentColor,
            textStyle: TextStyle(
              color: Coolors.primaryColor,
            ),
            shape: Vx.roundedSm,  
          ),
          onPressed: () {
            launch("https://github.com/SatYu26");
          },
          child: "View More".text.bold.make(),
        ).h(50),
      ).showCursorOnHover.moveUpOnHover,
    ]);
  }
}
