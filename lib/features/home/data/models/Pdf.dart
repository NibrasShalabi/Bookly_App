import 'dart:convert';
import 'package:equatable/equatable.dart';

Pdf pdfFromJson(String str) => Pdf.fromJson(json.decode(str));
String pdfToJson(Pdf data) => json.encode(data.toJson());

class Pdf extends Equatable {
  Pdf({
    this.isAvailable,
    this.acsTokenLink,});

  Pdf.fromJson(dynamic json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
  bool? isAvailable;
  String? acsTokenLink;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isAvailable'] = isAvailable;
    map['acsTokenLink'] = acsTokenLink;
    return map;
  }

  @override
  List<Object?> get props => [isAvailable, acsTokenLink];
}
