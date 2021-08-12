import 'package:flutter/material.dart';
import 'package:steps/steps.dart';

class ExperiencesMobile extends StatelessWidget {
  const ExperiencesMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.81,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      child: Steps(
        direction: Axis.vertical,
        size: 20.0,
        path: {'color': Colors.lightBlue.shade200, 'width': 2.75},
        steps: [
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🌟',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "AERO CLUB - MU",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I am Currently part of Micro Team in our Aero club.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "August - 2019 - Present ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '📱',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Wyndo",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I worked on a Freelance Project called Wyndo.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "May - 2020 - September - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': "📱",
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Widhya",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "As Software Development Engineer my key responsibilities include:-\n"
                  "-Design and develop web pages from scratch.\n"
                  "-Worked on improving and building the User Interface ( UI ) for Widhya's platform.\n",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "May - 2020 - July - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
          {
            'color': Color(0xff64FFDA),
            'background': Colors.indigo,
            'label': '🌟',
            'content': Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "CovIndia",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  "I was a part of CovIndia Team (The website that hit million views in 2 weeks)\n"
                  "-Data Acquisition",
                  style: TextStyle(
                    fontSize: 13.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "April - 2020 - June - 2020 ",
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Color(0xffCCD6F6).withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          },
        ],
      ),
    );
  }
}
