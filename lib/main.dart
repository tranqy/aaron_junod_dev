import 'package:aaron_junod_dev/aaron_resume_contents.dart';
import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/custom_theme.dart';
import 'components/resume.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aaron Junod',
      theme: CustomTheme.current(),
      home: Scaffold(body: _portfolio(context)),
    );
  }
  
  Widget _portfolio(BuildContext context) {
    return ListView(
      children: <Widget>[
        Header(resumeContent: AaronResumeContents.current),
        Resume(resumeContent: AaronResumeContents.current),
      ],
    );
  }

}



