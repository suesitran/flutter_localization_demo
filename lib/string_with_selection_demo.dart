import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localisationdemo/generated/l10n.dart';

class StringWithSelectionsDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _StringWithSelectionsDemoState();
}

class _StringWithSelectionsDemoState extends State<StringWithSelectionsDemo> {
  Toys _toys;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyAppLocalisation.of(context).stringWithSelectionsTitle),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton.icon(
                    onPressed: () => setState(() => _toys = Toys.cars),
                    icon: Icon(Icons.directions_car),
                    label: Text(MyAppLocalisation.of(context).cars)),
                RaisedButton.icon(
                    onPressed: () => setState(() => _toys = Toys.dolls),
                    icon: Icon(Icons.people),
                    label: Text(MyAppLocalisation.of(context).dolls)),
                RaisedButton.icon(
                    onPressed: () => setState(() => _toys = null),
                    icon: Icon(Icons.map),
                    label: Text(MyAppLocalisation.of(context).otherToys))
              ],
            ),
            Text(MyAppLocalisation.of(context).iLikeToPlay(_toys)),
          ],
        ),
      );
}

enum Toys { cars, dolls }
