import 'dart:convert';
import 'package:equatable/equatable.dart';

ImageLinks imageLinksFromJson(String str) => ImageLinks.fromJson(json.decode(str));
String imageLinksToJson(ImageLinks data) => json.encode(data.toJson());

class ImageLinks extends Equatable {
  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,});

  ImageLinks.fromJson(dynamic json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }
  String? smallThumbnail;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['smallThumbnail'] = smallThumbnail;
    map['thumbnail'] = thumbnail;
    return map;
  }

  @override
  List<Object?> get props => [smallThumbnail, thumbnail];
}
