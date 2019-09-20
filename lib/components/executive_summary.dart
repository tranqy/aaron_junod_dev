import '../models/resume_content.dart';
import 'package:flutter/material.dart';
import 'package:koukicons/employeeBadge2.dart';

class ExecutiveSummary extends StatelessWidget {
  const ExecutiveSummary({
    Key key,
    @required this.resumeContent,
    @required this.context,
  }) : super(key: key);

  final ResumeContent resumeContent;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: KoukiconsEmployeeBadge2(),
        ),
    
        Expanded(
          flex: 30,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (String summary in resumeContent.executiveSummary) Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(summary, style: Theme.of(context).textTheme.subhead.copyWith(color: Theme.of(context).primaryColorDark),),
              )
            ],
          ),
        ),
        Expanded(flex: 2, child: Container(),)
      ],
    );
  }
}