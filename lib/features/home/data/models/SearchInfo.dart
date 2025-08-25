import 'dart:convert';
import 'package:equatable/equatable.dart';

SearchInfo searchInfoFromJson(String str) => SearchInfo.fromJson(json.decode(str));
String searchInfoToJson(SearchInfo data) => json.encode(data.toJson());

class SearchInfo extends Equatable {
  SearchInfo({
    this.textSnippet,});

  SearchInfo.fromJson(dynamic json) {
    textSnippet = json['textSnippet'];
  }
  String? textSnippet;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['textSnippet'] = textSnippet;
    return map;
  }

  @override
  List<Object?> get props => [textSnippet];
}
