import 'package:aaron_junod_dev/models/resume_content.dart';
import 'package:flutter/material.dart';

import 'contact_icons.dart';
import 'header_profile_headline.dart';
import 'profile_image.dart';

class Header extends StatelessWidget {
  final ResumeContent resumeContent;
  const Header({
    Key key,
    this.resumeContent
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 8,),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: ProfileImage(),
                ),
                Expanded(
                  flex: 8,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[HeaderProfileHeadline(resumeContent: resumeContent), ContactIcons(resumeContent: resumeContent)],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
