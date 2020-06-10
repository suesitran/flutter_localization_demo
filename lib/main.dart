import 'package:flutter/material.dart';
import 'package:localisationdemo/complex_string_demo.dart';
import 'package:localisationdemo/generated/l10n.dart';
import 'package:localisationdemo/plural_string_demo.dart';
import 'package:localisationdemo/routes.dart';
import 'package:localisationdemo/simple_string_demo.dart';
import 'package:localisationdemo/string_with_params_demo.dart';
import 'package:localisationdemo/string_with_selection_demo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localization demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Localization Home Page'),
      // Localisation support
      localizationsDelegates: [
        MyAppLocalisation.delegate
      ],
      supportedLocales: MyAppLocalisation.delegate.supportedLocales,
      routes: {
        Routes.SimpleStringDemo: (context) => SimpleStringDemo(),
        Routes.StringWithParamsDemo: (context) => StringWithParamsDemo(),
        Routes.StringWithSelectionsDemo: (context) => StringWithSelectionsDemo(),
        Routes.PluralStringDemo: (context) => PluralStringDemo(),
        Routes.ComplexStringDemo: (context) => ComplexStringDemo()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(MyAppLocalisation.of(context).simpleStringTitle),
              onPressed: () => Navigator.pushNamed(context, Routes.SimpleStringDemo),
            ),
            RaisedButton(
              child: Text(MyAppLocalisation.of(context).stringWithParamsTitle),
              onPressed: () => Navigator.pushNamed(context, Routes.StringWithParamsDemo),
            ),
            RaisedButton(
              child: Text(MyAppLocalisation.of(context).stringWithSelectionsTitle),
              onPressed: () => Navigator.pushNamed(context, Routes.StringWithSelectionsDemo),
            ),
            RaisedButton(
              child: Text(MyAppLocalisation.of(context).pluralStringDemoTitle),
              onPressed: () => Navigator.pushNamed(context, Routes.PluralStringDemo),
            ),
            RaisedButton(
              child: Text(MyAppLocalisation.of(context).complexStringDemoTitle),
              onPressed: () => Navigator.pushNamed(context, Routes.ComplexStringDemo),
            )
          ],
        ),
      ),
    );
  }
}
