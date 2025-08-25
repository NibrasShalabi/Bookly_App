import 'dart:convert';
import 'package:equatable/equatable.dart';

Epub epubFromJson(String str) => Epub.fromJson(json.decode(str));
String epubToJson(Epub data) => json.encode(data.toJson());

class Epub extends Equatable {
  Epub({
    this.isAvailable,});

  Epub.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
  }
  bool? isAvailable;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    return map;
  }

  @override
  List<Object?> get props => [isAvailable];
}
