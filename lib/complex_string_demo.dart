import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localisationdemo/generated/l10n.dart';

class ComplexStringDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ComplexStringDemoState();
}

class _ComplexStringDemoState extends State<ComplexStringDemo> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _age = TextEditingController();

  Toys _toys;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(MyAppLocalisation.of(context).complexStringDemoTitle),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(
            controller: _name,
            decoration: InputDecoration(
              labelText: MyAppLocalisation.of(context).enterYourName
            ),
          ),
          TextField(
            controller: _age,
            decoration: InputDecoration(
              labelText: MyAppLocalisation.of(context).enterYourAge
            ),
            keyboardType: TextInputType.number,
          ),
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
          Text(
            MyAppLocalisation.of(context).summaryAboutYou(_toys, _name.text, _age.text ?? 0)
          )
        ],
      ),
    ),
  );
}

enum Toys {
  cars,
  dolls
}