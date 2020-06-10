import 'package:flutter/material.dart';
import 'package:localisationdemo/generated/l10n.dart';

class SimpleStringDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(MyAppLocalisation.of(context).simpleStringTitle),
    ),
    body: Center(
      child: Text(MyAppLocalisation.of(context).simpleStringDemoText),
    ),
  );
}