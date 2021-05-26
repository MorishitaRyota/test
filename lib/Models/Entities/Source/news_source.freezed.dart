// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'news_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
NewsSource _$NewsSourceFromJson(Map<String, dynamic> json) {
  return _NewsSource.fromJson(json);
}

/// @nodoc
class _$NewsSourceTearOff {
  const _$NewsSourceTearOff();

// ignore: unused_element
  _NewsSource call({String id, String name}) {
    return _NewsSource(
      id: id,
      name: name,
    );
  }

// ignore: unused_element
  NewsSource fromJson(Map<String, Object> json) {
    return NewsSource.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $NewsSource = _$NewsSourceTearOff();

/// @nodoc
mixin _$NewsSource {
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $NewsSourceCopyWith<NewsSource> get copyWith;
}

/// @nodoc
abstract class $NewsSourceCopyWith<$Res> {
  factory $NewsSourceCopyWith(
          NewsSource value, $Res Function(NewsSource) then) =
      _$NewsSourceCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

/// @nodoc
class _$NewsSourceCopyWithImpl<$Res> implements $NewsSourceCopyWith<$Res> {
  _$NewsSourceCopyWithImpl(this._value, this._then);

  final NewsSource _value;
  // ignore: unused_field
  final $Res Function(NewsSource) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$NewsSourceCopyWith<$Res> implements $NewsSourceCopyWith<$Res> {
  factory _$NewsSourceCopyWith(
          _NewsSource value, $Res Function(_NewsSource) then) =
      __$NewsSourceCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

/// @nodoc
class __$NewsSourceCopyWithImpl<$Res> extends _$NewsSourceCopyWithImpl<$Res>
    implements _$NewsSourceCopyWith<$Res> {
  __$NewsSourceCopyWithImpl(
      _NewsSource _value, $Res Function(_NewsSource) _then)
      : super(_value, (v) => _then(v as _NewsSource));

  @override
  _NewsSource get _value => super._value as _NewsSource;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_NewsSource(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_NewsSource with DiagnosticableTreeMixin implements _NewsSource {
  const _$_NewsSource({this.id, this.name});

  factory _$_NewsSource.fromJson(Map<String, dynamic> json) =>
      _$_$_NewsSourceFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewsSource(id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewsSource'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewsSource &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NewsSourceCopyWith<_NewsSource> get copyWith =>
      __$NewsSourceCopyWithImpl<_NewsSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NewsSourceToJson(this);
  }
}

abstract class _NewsSource implements NewsSource {
  const factory _NewsSource({String id, String name}) = _$_NewsSource;

  factory _NewsSource.fromJson(Map<String, dynamic> json) =
      _$_NewsSource.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$NewsSourceCopyWith<_NewsSource> get copyWith;
}
