import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localisationdemo/generated/l10n.dart';

class PluralStringDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _PluralStringDemoState();
}

class _PluralStringDemoState extends State<PluralStringDemo> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        MyAppLocalisation.of(context).pluralStringDemoTitle
      ),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            child: Text(MyAppLocalisation.of(context).clickMe),
            onPressed: () => setState(() => _counter++),
          ),
          Text(
            MyAppLocalisation.of(context).youHavePressThisButtonManyTimes(_counter)
          )
        ],
      ),
    ),
  );
}