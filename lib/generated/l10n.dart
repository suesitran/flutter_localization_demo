// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

class MyAppLocalisation {
  MyAppLocalisation();
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<MyAppLocalisation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return MyAppLocalisation();
    });
  } 

  static MyAppLocalisation of(BuildContext context) {
    return Localizations.of<MyAppLocalisation>(context, MyAppLocalisation);
  }

  String get simpleStringTitle {
    return Intl.message(
      'Simple string demo',
      name: 'simpleStringTitle',
      desc: '',
      args: [],
    );
  }

  String get simpleStringDemoText {
    return Intl.message(
      'This is a simple string',
      name: 'simpleStringDemoText',
      desc: '',
      args: [],
    );
  }

  String get stringWithParamsTitle {
    return Intl.message(
      'Strings with params demo',
      name: 'stringWithParamsTitle',
      desc: '',
      args: [],
    );
  }

  String get enterYourName {
    return Intl.message(
      'Enter your name',
      name: 'enterYourName',
      desc: '',
      args: [],
    );
  }

  String get enterYourAge {
    return Intl.message(
      'Enter your age',
      name: 'enterYourAge',
      desc: '',
      args: [],
    );
  }

  String get clickMe {
    return Intl.message(
      'Click me',
      name: 'clickMe',
      desc: '',
      args: [],
    );
  }

  String hello(Object name, Object age) {
    return Intl.message(
      'Hello $name, you are $age years old',
      name: 'hello',
      desc: '',
      args: [name, age],
    );
  }

  String get stringWithSelectionsTitle {
    return Intl.message(
      'String with selections demo',
      name: 'stringWithSelectionsTitle',
      desc: '',
      args: [],
    );
  }

  String get cars {
    return Intl.message(
      'Cars',
      name: 'cars',
      desc: '',
      args: [],
    );
  }

  String get dolls {
    return Intl.message(
      'Dolls',
      name: 'dolls',
      desc: '',
      args: [],
    );
  }

  String get otherToys {
    return Intl.message(
      'Other toys',
      name: 'otherToys',
      desc: '',
      args: [],
    );
  }

  String iLikeToPlay(Object toy) {
    return Intl.select(
      toy,
      {
        'cars': 'I like to play racing cars',
        'dolls': 'I like to dress up dolls',
        'other': 'I like to play other toys',
      },
      name: 'iLikeToPlay',
      desc: '',
      args: [toy],
    );
  }

  String get pluralStringDemoTitle {
    return Intl.message(
      'Plural String Demo',
      name: 'pluralStringDemoTitle',
      desc: '',
      args: [],
    );
  }

  String youHavePressThisButtonManyTimes(num counter) {
    return Intl.plural(
      counter,
      zero: 'You have not clicked the button yet',
      one: 'You have clicked the button 1 time',
      other: 'You have clicked the button $counter times',
      name: 'youHavePressThisButtonManyTimes',
      desc: '',
      args: [counter],
    );
  }

  String get complexStringDemoTitle {
    return Intl.message(
      'Complex String Demo',
      name: 'complexStringDemoTitle',
      desc: '',
      args: [],
    );
  }

  String summaryAboutYou(Object toys, Object name, Object age) {
    return Intl.select(
      toys,
      {
        'cars': 'Your name is $name, $age years old, and you love to play racing cars',
        'dolls': 'Your name is $name, and you are $age years old, and you love to dress up dolls',
        'other': 'You are $name, $age years old',
      },
      name: 'summaryAboutYou',
      desc: '',
      args: [toys, name, age],
    );
  }

  String complexStringSample(Object toys, Object origin, Object name) {
    return Intl.select(
      toys,
      {
        'cars': '$name from $origin loves to play racing cars',
        'dolls': '$name from $origin loves to play dolls',
        'other': 'I have no idea',
      },
      name: 'complexStringSample',
      desc: '',
      args: [toys, origin, name],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<MyAppLocalisation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<MyAppLocalisation> load(Locale locale) => MyAppLocalisation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}