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
                child: ProjectTitle,
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
          method.launchURL("https://github.com/anurag-tekale/RU_Hackathon");
        },
        link: () {
          method.launchURL("https://devpost.com/software/connect-0qgxr8");
        },
        projectname: 'RU Hackathon',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL("https://github.com/anurag-tekale/RU_Hackathon");
        },
        link: () {
          method.launchURL("https://devpost.com/software/connect-0qgxr8");
        },
        projectname: 'RU Hackathon',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://www.canva.com/design/DAEffYwSnyU/view?utm_content=DAEffYwSnyU&utm_campaign=designshare&utm_medium=link&utm_source=viewer");
        },
        link: () {
          method.launchURL("https://anurag2402.herokuapp.com/");
        },
        projectname: 'Portfolio',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method.launchURL(
              "https://www.canva.com/design/DAEffYwSnyU/view?utm_content=DAEffYwSnyU&utm_campaign=designshare&utm_medium=link&utm_source=viewer");
        },
        link: () {
          method.launchURL(
              "https://www.canva.com/design/DAEffYwSnyU/view?utm_content=DAEffYwSnyU&utm_campaign=designshare&utm_medium=link&utm_source=viewer");
        },
        projectname: 'RealTime FaceMask Detection',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method
              .launchURL("https://github.com/anurag-tekale/Widhya_Internship");
        },
        link: () {
          method
              .launchURL("https://github.com/anurag-tekale/Widhya_Internship");
        },
        projectname: 'Widhya Internship',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      MobileProject(
        ontab: () {
          method
              .launchURL("https://github.com/anurag-tekale/E-Summit_Hackathon");
        },
        link: () {
          method
              .launchURL("https://github.com/anurag-tekale/E-Summit_Hackathon");
        },
        projectname: 'E-Summit Hackathon',
      ),
      SizedBox(
        height: size.height * 0.07,
      ),
      LimitedBox(
        maxWidth: 150,
        child: RaisedButton(
          onPressed: () {
            launch("https://github.com/anurag-tekale");
          },
          hoverColor: Vx.purple700,
          shape: Vx.roundedSm,
          color: Coolors.accentColor,
          textColor: Coolors.primaryColor,
          child: "View More".text.bold.make(),
        ).h(50),
      ).showCursorOnHover.moveUpOnHover,
    ]);
  }
}
