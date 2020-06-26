// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static m0(toys, origin, name) => "${Intl.select(toys, {'cars': '${name} from ${origin} loves to play racing cars', 'dolls': '${name} from ${origin} loves to play dolls', 'other': 'I have no idea', })}";

  static m1(name, age) => "Hello ${name}, you are ${age} years old";

  static m2(toy) => "${Intl.select(toy, {'cars': 'I like to play racing cars', 'dolls': 'I like to dress up dolls', 'other': 'I like to play other toys', })}";

  static m3(toys, name, age) => "${Intl.select(toys, {'cars': 'Your name is ${name}, ${age} years old, and you love to play racing cars', 'dolls': 'Your name is ${name}, and you are ${age} years old, and you love to dress up dolls', 'other': 'You are ${name}, ${age} years old', })}";

  static m4(counter) => "${Intl.plural(counter, zero: 'You have not clicked the button yet', one: 'You have clicked the button 1 time', other: 'You have clicked the button ${counter} times')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "cars" : MessageLookupByLibrary.simpleMessage("Cars"),
    "clickMe" : MessageLookupByLibrary.simpleMessage("Click me"),
    "complexStringDemoTitle" : MessageLookupByLibrary.simpleMessage("Complex String Demo"),
    "complexStringSample" : m0,
    "dolls" : MessageLookupByLibrary.simpleMessage("Dolls"),
    "enterYourAge" : MessageLookupByLibrary.simpleMessage("Enter your age"),
    "enterYourName" : MessageLookupByLibrary.simpleMessage("Enter your name"),
    "hello" : m1,
    "iLikeToPlay" : m2,
    "otherToys" : MessageLookupByLibrary.simpleMessage("Other toys"),
    "pluralStringDemoTitle" : MessageLookupByLibrary.simpleMessage("Plural String Demo"),
    "simpleStringDemoText" : MessageLookupByLibrary.simpleMessage("This is a simple string"),
    "simpleStringTitle" : MessageLookupByLibrary.simpleMessage("Simple string demo"),
    "stringWithParamsTitle" : MessageLookupByLibrary.simpleMessage("Strings with params demo"),
    "stringWithSelectionsTitle" : MessageLookupByLibrary.simpleMessage("String with selections demo"),
    "summaryAboutYou" : m3,
    "youHavePressThisButtonManyTimes" : m4
  };
}
