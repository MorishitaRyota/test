import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news_source.freezed.dart';
part 'news_source.g.dart';

/*class NewsSource {
  String id;
  String name;

  NewsSource({this.id, this.name});

  factory NewsSource.fromJson(Map<String, dynamic> json) {
    return NewsSource(id: json['id'], name: json['name']);
  }
}*/

@freezed
abstract class NewsSource with _$NewsSource {
  const factory NewsSource({
    String id,
    String name,
  }) = _NewsSource;

  factory NewsSource.fromJson(Map<String, dynamic> json) =>
      _$NewsSourceFromJson(json);

  /*factory NewsSource.fromJson(Map<String, dynamic> json) {
    return NewsSource(id: json['id'], name: json['name']);
  }*/
}
