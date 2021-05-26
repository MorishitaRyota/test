// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsArticle _$NewsArticleFromJson(Map<String, dynamic> json) {
  return _NewsArticle.fromJson(json);
}

/// @nodoc
class _$NewsArticleTearOff {
  const _$NewsArticleTearOff();

// ignore: unused_element
  _NewsArticle call(
      {NewsSource source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content}) {
    return _NewsArticle(
      source: source,
      author: author,
      title: title,
      description: description,
      url: url,
      urlToImage: urlToImage,
      publishedAt: publishedAt,
      content: content,
    );
  }

// ignore: unused_element
  NewsArticle fromJson(Map<String, Object> json) {
    return NewsArticle.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewsArticle = _$NewsArticleTearOff();

/// @nodoc
mixin _$NewsArticle {
  NewsSource get source;
  String get author;
  String get title;
  String get description;
  String get url;
  String get urlToImage;
  String get publishedAt;
  String get content;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewsArticleCopyWith<NewsArticle> get copyWith;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
          NewsArticle value, $Res Function(NewsArticle) then) =
      _$NewsArticleCopyWithImpl<$Res>;
  $Res call(
      {NewsSource source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content});

  $NewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res> implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  final NewsArticle _value;
  // ignore: unused_field
  final $Res Function(NewsArticle) _then;

  @override
  $Res call({
    Object source = freezed,
    Object author = freezed,
    Object title = freezed,
    Object description = freezed,
    Object url = freezed,
    Object urlToImage = freezed,
    Object publishedAt = freezed,
    Object content = freezed,
  }) {
    return _then(_value.copyWith(
      source: source == freezed ? _value.source : source as NewsSource,
      author: author == freezed ? _value.author : author as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      url: url == freezed ? _value.url : url as String,
      urlToImage:
          urlToImage == freezed ? _value.urlToImage : urlToImage as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }

  @override
  $NewsSourceCopyWith<$Res> get source {
    if (_value.source == null) {
      return null;
    }
    return $NewsSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value));
    });
  }
}

/// @nodoc
abstract class _$NewsArticleCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$NewsArticleCopyWith(
          _NewsArticle value, $Res Function(_NewsArticle) then) =
      __$NewsArticleCopyWithImpl<$Res>;
  @override
  $Res call(
      {NewsSource source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content});

  @override
  $NewsSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$NewsArticleCopyWithImpl<$Res> extends _$NewsArticleCopyWithImpl<$Res>
    implements _$NewsArticleCopyWith<$Res> {
  __$NewsArticleCopyWithImpl(
      _NewsArticle _value, $Res Function(_NewsArticle) _then)
      : super(_value, (v) => _then(v as _NewsArticle));

  @override
  _NewsArticle get _value => super._value as _NewsArticle;

  @override
  $Res call({
    Object source = freezed,
    Object author = freezed,
    Object title = freezed,
    Object description = freezed,
    Object url = freezed,
    Object urlToImage = freezed,
    Object publishedAt = freezed,
    Object content = freezed,
  }) {
    return _then(_NewsArticle(
      source: source == freezed ? _value.source : source as NewsSource,
      author: author == freezed ? _value.author : author as String,
      title: title == freezed ? _value.title : title as String,
      description:
          description == freezed ? _value.description : description as String,
      url: url == freezed ? _value.url : url as String,
      urlToImage:
          urlToImage == freezed ? _value.urlToImage : urlToImage as String,
      publishedAt:
          publishedAt == freezed ? _value.publishedAt : publishedAt as String,
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewsArticle with DiagnosticableTreeMixin implements _NewsArticle {
  const _$_NewsArticle(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory _$_NewsArticle.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsArticleFromJson(json);

  @override
  final NewsSource source;
  @override
  final String author;
  @override
  final String title;
  @override
  final String description;
  @override
  final String url;
  @override
  final String urlToImage;
  @override
  final String publishedAt;
  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsArticle(source: $source, author: $author, title: $title, description: $description, url: $url, urlToImage: $urlToImage, publishedAt: $publishedAt, content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsArticle'))
      ..add(DiagnosticsProperty('source', source))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('urlToImage', urlToImage))
      ..add(DiagnosticsProperty('publishedAt', publishedAt))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsArticle &&
            (identical(other.source, source) ||
                const DeepCollectionEquality().equals(other.source, source)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.urlToImage, urlToImage) ||
                const DeepCollectionEquality()
                    .equals(other.urlToImage, urlToImage)) &&
            (identical(other.publishedAt, publishedAt) ||
                const DeepCollectionEquality()
                    .equals(other.publishedAt, publishedAt)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(source) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(urlToImage) ^
      const DeepCollectionEquality().hash(publishedAt) ^
      const DeepCollectionEquality().hash(content);

  @JsonKey(ignore: true)
  @override
  _$NewsArticleCopyWith<_NewsArticle> get copyWith =>
      __$NewsArticleCopyWithImpl<_NewsArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsArticleToJson(this);
  }
}

abstract class _NewsArticle implements NewsArticle {
  const factory _NewsArticle(
      {NewsSource source,
      String author,
      String title,
      String description,
      String url,
      String urlToImage,
      String publishedAt,
      String content}) = _$_NewsArticle;

  factory _NewsArticle.fromJson(Map<String, dynamic> json) =
      _$_NewsArticle.fromJson;

  @override
  NewsSource get source;
  @override
  String get author;
  @override
  String get title;
  @override
  String get description;
  @override
  String get url;
  @override
  String get urlToImage;
  @override
  String get publishedAt;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$NewsArticleCopyWith<_NewsArticle> get copyWith;
}
