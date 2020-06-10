import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localisationdemo/generated/l10n.dart';

class StringWithParamsDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _StringWithParamsDemoState();
}

class _StringWithParamsDemoState extends State<StringWithParamsDemo> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  final scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) => Scaffold(
    key: scaffoldState,
    appBar: AppBar(
      title: Text(MyAppLocalisation.of(context).stringWithParamsTitle),
    ),
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TextField(
          controller: _nameController,
          decoration: InputDecoration(
            labelText: MyAppLocalisation.of(context).enterYourName
          ),
        ),
        TextField(
          controller: _ageController,
          decoration: InputDecoration(
            labelText: MyAppLocalisation.of(context).enterYourAge
          ),
          keyboardType: TextInputType.number,
        ),
        RaisedButton(
          child: Text(MyAppLocalisation.of(context).clickMe),
          onPressed: _showBottomSheet
        )
      ],
    ),
  );

  void _showBottomSheet() => scaffoldState.currentState.showBottomSheet((context) => Center(
    child: Text(MyAppLocalisation.of(context).hello(_nameController.text, _ageController.text)),
  ));
}