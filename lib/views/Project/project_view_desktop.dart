import 'package:flutter/material.dart';
import 'package:anurag_website/Colors/colors.dart';
import 'package:anurag_website/views/Project/FeatureProjectInvertedWidget.dart';
import 'package:anurag_website/views/Project/FeatureProjectWidget.dart';
import 'package:anurag_website/widgets/method/method.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:anurag_website/extensions/hover_extensions.dart';

class ProjectViewDesktop extends StatelessWidget {
  const ProjectViewDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProjectTitle = "--- Some Things I've Built ---"
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
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.88,
      child: Stack(
        fit: StackFit.expand,
        children: [
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
          //   child: Align(
          //     alignment: Alignment.topCenter,
          //     child: ProjectTitle,
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Projects(),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ProjectTitle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Projects extends StatelessWidget {
  Method method = Method();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: [
        SizedBox(
          height: size.height * 0.04,
        ),
        FeatureProjectInverted(
          imagePath: "assets/widhya.png",
          ontab: () {
            method.launchURL(
                "https://github.com/anurag-tekale/Mec_Management_AppUI");
          },
          projectDesc: "A Simple College Management App",
          projectTitle: "Design Thinking Lab Project",
          tech1: "Flutter",
          tech2: "Firebase",
          tech3: "UI/UX",
        ),
        FeatureProject(
          imagePath: "assets/RU.png",
          ontab: () {
            method.launchURL("https://devpost.com/software/connect-0qgxr8");
          },
          projectDesc:
              "Connect helps students who need assistance in studying.\nKnow more",
          projectTitle: "Connect",
          tech1: "Flutter",
          tech2: "Firebase",
          tech3: "AdobeXd",
        ),
        FeatureProjectInverted(
          imagePath: "assets/Portfolio.png",
          ontab: () {
            method.launchURL(
                "https://www.canva.com/design/DAEffYwSnyU/view?utm_content=DAEffYwSnyU&utm_campaign=designshare&utm_medium=link&utm_source=viewer");
          },
          projectDesc: "My Portfolio website created using Flutter",
          projectTitle: "Portfolio",
          tech1: "Flutter",
          tech2: "Dart",
          tech3: "Web Development",
        ),
        FeatureProject(
          imagePath: "assets/tfjs.png",
          ontab: () {
            method.launchURL(
                "https://www.canva.com/design/DAEffYwSnyU/view?utm_content=DAEffYwSnyU&utm_campaign=designshare&utm_medium=link&utm_source=viewer");
          },
          projectDesc:
              "Detects whether you have mask on or off\nCreated Using Tensorflow and ComputerVision.",
          projectTitle: "RealTime FaceMask Detection",
          tech1: "ComputerVision",
          tech2: "Tensorflow",
          tech3: "ML",
        ),
        FeatureProjectInverted(
          imagePath: "assets/widhya.png",
          ontab: () {
            method.launchURL(
                "https://github.com/anurag-tekale/Widhya_Internship");
          },
          projectDesc: "Software Development Engineer",
          projectTitle: "Widhya Internship",
          tech1: "Flutter",
          tech2: "Firebase",
          tech3: "UI/UX",
        ),
        FeatureProject(
          imagePath: "assets/e-summit.jpg",
          ontab: () {
            method.launchURL(
                "https://github.com/anurag-tekale/E-Summit_Hackathon");
          },
          projectDesc:
              "A modern application for farmers to sell their goods directly to the customers.",
          projectTitle: "E-Summit Hackathon",
          tech1: "Html",
          tech2: "Css",
          tech3: "Java",
        ),
        LimitedBox(
          maxWidth: 50,
          child: RaisedButton(
            onPressed: () {
              launch("https://github.com/anurag-tekale");
            },
            hoverColor: Vx.purple700,
            shape: Vx.roundedSm,
            color: Coolors.accentColor,
            textColor: Coolors.primaryColor,
            child: "View More".text.bold.make(),
          ).h(50).w(50),
        ).showCursorOnHover.moveUpOnHover,
      ],
    );
  }
}
