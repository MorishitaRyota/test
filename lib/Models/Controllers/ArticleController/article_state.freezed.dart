/*// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'article_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ArticleStateTearOff {
  const _$ArticleStateTearOff();

// ignore: unused_element
  _ArticleState call(
      {List<NewsArticle> articles = const [], bool isLoading = false}) {
    return _ArticleState(
      articles: articles,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ArticleState = _$ArticleStateTearOff();

/// @nodoc
mixin _$ArticleState {
  List<NewsArticle> get articles;
  bool get isLoading;

  @JsonKey(ignore: true)
  $ArticleStateCopyWith<ArticleState> get copyWith;
}

/// @nodoc
abstract class $ArticleStateCopyWith<$Res> {
  factory $ArticleStateCopyWith(
          ArticleState value, $Res Function(ArticleState) then) =
      _$ArticleStateCopyWithImpl<$Res>;
  $Res call({List<NewsArticle> articles, bool isLoading});
}

/// @nodoc
class _$ArticleStateCopyWithImpl<$Res> implements $ArticleStateCopyWith<$Res> {
  _$ArticleStateCopyWithImpl(this._value, this._then);

  final ArticleState _value;
  // ignore: unused_field
  final $Res Function(ArticleState) _then;

  @override
  $Res call({
    Object articles = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      articles:
          articles == freezed ? _value.articles : articles as List<NewsArticle>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
abstract class _$ArticleStateCopyWith<$Res>
    implements $ArticleStateCopyWith<$Res> {
  factory _$ArticleStateCopyWith(
          _ArticleState value, $Res Function(_ArticleState) then) =
      __$ArticleStateCopyWithImpl<$Res>;
  @override
  $Res call({List<NewsArticle> articles, bool isLoading});
}

/// @nodoc
class __$ArticleStateCopyWithImpl<$Res> extends _$ArticleStateCopyWithImpl<$Res>
    implements _$ArticleStateCopyWith<$Res> {
  __$ArticleStateCopyWithImpl(
      _ArticleState _value, $Res Function(_ArticleState) _then)
      : super(_value, (v) => _then(v as _ArticleState));

  @override
  _ArticleState get _value => super._value as _ArticleState;

  @override
  $Res call({
    Object articles = freezed,
    Object isLoading = freezed,
  }) {
    return _then(_ArticleState(
      articles:
          articles == freezed ? _value.articles : articles as List<NewsArticle>,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
    ));
  }
}

/// @nodoc
class _$_ArticleState implements _ArticleState {
  const _$_ArticleState({this.articles = const [], this.isLoading = false})
      : assert(articles != null),
        assert(isLoading != null);

  @JsonKey(defaultValue: const [])
  @override
  final List<NewsArticle> articles;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ArticleState(articles: $articles, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ArticleState &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(articles) ^
      const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$ArticleStateCopyWith<_ArticleState> get copyWith =>
      __$ArticleStateCopyWithImpl<_ArticleState>(this, _$identity);
}

abstract class _ArticleState implements ArticleState {
  const factory _ArticleState({List<NewsArticle> articles, bool isLoading}) =
      _$_ArticleState;

  @override
  List<NewsArticle> get articles;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ArticleStateCopyWith<_ArticleState> get copyWith;
}
*/
