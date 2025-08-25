import 'dart:convert';
import 'package:equatable/equatable.dart';

ReadingModes readingModesFromJson(String str) => ReadingModes.fromJson(json.decode(str));
String readingModesToJson(ReadingModes data) => json.encode(data.toJson());

class ReadingModes extends Equatable {
  ReadingModes({
    this.text,
    this.image,});

  ReadingModes.fromJson(dynamic json) {
    text = json['text'];
    image = json['image'];
  }
  bool? text;
  bool? image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['image'] = image;
    return map;
  }

  @override
  List<Object?> get props => [text, image];
}
