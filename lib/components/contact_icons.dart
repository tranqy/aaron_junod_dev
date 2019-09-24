import 'package:aaron_junod_dev/models/resume_content.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'dart:io';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

class ContactIcons extends StatelessWidget {
  final ResumeContent resumeContent;

  const ContactIcons({Key key, this.resumeContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.linkedin),
            onPressed: () {
              _launchURL("http://linkedin.com/in/${resumeContent.linkedIn}");
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.github),
            onPressed: () {
              _launchURL("http://github.com/${resumeContent.github}");
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.twitter),
            onPressed: () {
              String url = "http://twitter.com/${resumeContent.twitter}";
              _launchURL(url);
            }),
        IconButton(
            // Use the FontAwesomeIcons class for the IconData
            color: Colors.white54,
            icon: new Icon(FontAwesomeIcons.envelope),
            onPressed: () {
            _launchURL("mailto:${resumeContent.email}");
            }),
      ],
    );
  }

  _launchURL(String url) async {
    html.window.location.assign(url);
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

// bool _isFlutterWeb() {
//   return Platform.isWindows == false &&
//       Platform.isAndroid == false &&
//       Platform.isFuchsia == false &&
//       Platform.isIOS == false &&
//       Platform.isLinux == false &&
//       Platform.isMacOS == false;
// }
