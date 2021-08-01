import 'package:flutter/material.dart';
import 'package:anurag_website/widgets/custom_text/CustomText.dart';
import 'package:velocity_x/velocity_x.dart';

class IntroductionAboutMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double cwidth = MediaQuery.of(context).size.width * 0.6;
    double cheight = MediaQuery.of(context).size.height * 2.55;
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 0, 5, 0),
      width: cwidth,
      height: cheight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(child: Introduction()),
        ],
      ),
    );
  }
}

class Introduction extends StatelessWidget {
  const Introduction({
    Key key,
  }) : super(key: key);

  Widget technology(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.skip_next,
          color: Color(0xff64FFDA).withOpacity(0.6),
          size: 14.0,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.01,
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xff717C99),
            letterSpacing: 1.75,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final aboutIntroWidget = "Anurag is a 3rd-year student at Mahindra Unicersity pursuing the Mechanical branch."
            "Despite being from a non-technical branch, Anurag is highly interested and skilled in Computer Science"
            " and is constantly making his way to learn new skills and grab knowledge every day through hard work and dedication"
            "to improving himself to succeed in the future.\n\n"
            "He also feels uncomfortable talking about himself in the third person ;)\n"
            "Currently, Anurag is learning Machine Learning and Arduino."
            "He is highly skilled in making Android, Web, and Desktop apps using Flutter and Dart. He is also good at Machine Learning and Deep Learning."
            "He also believes in giving back to the community; therefore, he regularly makes Open Source contributions and has been part of open source events like Girl Script Summer of Code and many renowned Hackathons across the Globe."
            "He is also interested in Competetive Coding is trying to improve his skills every day.\n"
            "Anurag is also part of SAE Aero ( MU Club ) and was part of COVINDIA ( A website that hit a Million Views in 2 Weeks)."
            "Anurag has the vision to improve himself every day and achieve great success with sheer hard work and dedication in the near future.\n\n"
            "Do Cheer up for Anurag...!"
        .text
        .gray500
        .sm
        .make()
        .w(context.isMobile ? context.screenWidth : context.percentWidth * 40);
    return ListView(
        physics: NeverScrollableScrollPhysics(),
        addAutomaticKeepAlives: true,
        children: <Widget>[
          // Flexible(child: AboutintroWidget),
          aboutIntroWidget,
          SizedBox(
            height: 10,
          ),
          CustomText(
            text:
                "Here are a few technologies I've been working with recently:\n",
            textsize: 16.0,
            color: Color(0xff828DAA),
            fontWeight: FontWeight.w500,
            letterSpacing: 0.75,
          ), // crossAlignment: CrossAxisAlignment.center,
          Container(
            height: size.height * 0.25,
            width: size.width,
            //   color: Colors.redAccent,
            child: Row(
              children: [
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.45,
                  child: Column(
                    children: [
                      technology(context, "Flutter"),
                      technology(context, "Dart"),
                      technology(context, "Python"),
                      technology(context, "UI/UX"),
                      technology(context, "Tensorflow JS"),
                    ],
                  ),
                ),
                Container(
                  width: size.width * 0.40,
                  height: size.height * 0.45,
                  child: Column(
                    children: [
                      technology(context, "React"),
                      technology(context, "JavaScript"),
                      technology(context, "Open CV"),
                      technology(context, "ML"),
                      technology(context, "Node.js"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ]);
  }
}
