// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a vi locale. All the
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
  String get localeName => 'vi';

  static m0(toys, origin, name) => "${Intl.select(toys, {'cars': '${name} đến từ ${origin} thích chơi đua xe', 'dolls': '${name} đến từ ${origin} thích chơi búp bê', 'other': 'Không hiểu gì hết', })}";

  static m1(name, age) => "Xin Chào ${name}, Bạn ${age} tuổi";

  static m2(toy) => "${Intl.select(toy, {'cars': 'Tôi thích chơi đua xe', 'dolls': 'Tôi thích chưng diện cho búp bê', 'other': 'Tôi có những sở thích khác', })}";

  static m3(toys, name, age) => "${Intl.select(toys, {'cars': 'Bạn tên là ${name}, ${age} tuổi, và bạn thích chơi đua xe', 'dolls': 'Tên bạn là ${name}, và bạn ${age} tuổi, và bạn thích chưng diện cho búp bê', 'other': 'Bạn tên là ${name}, ${age} tuổi', })}";

  static m4(counter) => "${Intl.plural(counter, zero: 'Bạn chưa nhấn nút lần nào', one: 'Bạn đã nhấn nút 1 lần', other: 'Bạn đã nhất nút ${counter} lần')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function> {
    "cars" : MessageLookupByLibrary.simpleMessage("Xe hơi"),
    "clickMe" : MessageLookupByLibrary.simpleMessage("Kích vào đây"),
    "complexStringDemoTitle" : MessageLookupByLibrary.simpleMessage("Chuỗi phức tạp"),
    "complexStringSample" : m0,
    "dolls" : MessageLookupByLibrary.simpleMessage("Búp bê"),
    "enterYourAge" : MessageLookupByLibrary.simpleMessage("Nhập tuổi của bạn"),
    "enterYourName" : MessageLookupByLibrary.simpleMessage("Nhập tên của bạn"),
    "hello" : m1,
    "iLikeToPlay" : m2,
    "otherToys" : MessageLookupByLibrary.simpleMessage("Đồ chơi khác"),
    "pluralStringDemoTitle" : MessageLookupByLibrary.simpleMessage("Chuỗi với số"),
    "simpleStringDemoText" : MessageLookupByLibrary.simpleMessage("Đây là một chuỗi chữ rất là đơn giản"),
    "simpleStringTitle" : MessageLookupByLibrary.simpleMessage("Demo chuỗi đơn giản"),
    "stringWithParamsTitle" : MessageLookupByLibrary.simpleMessage("Demo text với params"),
    "stringWithSelectionsTitle" : MessageLookupByLibrary.simpleMessage("Demo chuỗi chữ với selections"),
    "summaryAboutYou" : m3,
    "youHavePressThisButtonManyTimes" : m4
  };
}
