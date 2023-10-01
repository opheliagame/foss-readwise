// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnotationDto {
  String? get id => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnotationDtoCopyWith<AnnotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationDtoCopyWith<$Res> {
  factory $AnnotationDtoCopyWith(
          AnnotationDto value, $Res Function(AnnotationDto) then) =
      _$AnnotationDtoCopyWithImpl<$Res, AnnotationDto>;
  @useResult
  $Res call({String? id, String? sourceId, String text});
}

/// @nodoc
class _$AnnotationDtoCopyWithImpl<$Res, $Val extends AnnotationDto>
    implements $AnnotationDtoCopyWith<$Res> {
  _$AnnotationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sourceId = freezed,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnotationDtoCopyWith<$Res>
    implements $AnnotationDtoCopyWith<$Res> {
  factory _$$_AnnotationDtoCopyWith(
          _$_AnnotationDto value, $Res Function(_$_AnnotationDto) then) =
      __$$_AnnotationDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? sourceId, String text});
}

/// @nodoc
class __$$_AnnotationDtoCopyWithImpl<$Res>
    extends _$AnnotationDtoCopyWithImpl<$Res, _$_AnnotationDto>
    implements _$$_AnnotationDtoCopyWith<$Res> {
  __$$_AnnotationDtoCopyWithImpl(
      _$_AnnotationDto _value, $Res Function(_$_AnnotationDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sourceId = freezed,
    Object? text = null,
  }) {
    return _then(_$_AnnotationDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnnotationDto extends _AnnotationDto {
  _$_AnnotationDto({this.id, this.sourceId, required this.text}) : super._();

  @override
  final String? id;
  @override
  final String? sourceId;
  @override
  final String text;

  @override
  String toString() {
    return 'AnnotationDto(id: $id, sourceId: $sourceId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnotationDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, sourceId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnotationDtoCopyWith<_$_AnnotationDto> get copyWith =>
      __$$_AnnotationDtoCopyWithImpl<_$_AnnotationDto>(this, _$identity);
}

abstract class _AnnotationDto extends AnnotationDto {
  factory _AnnotationDto(
      {final String? id,
      final String? sourceId,
      required final String text}) = _$_AnnotationDto;
  _AnnotationDto._() : super._();

  @override
  String? get id;
  @override
  String? get sourceId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationDtoCopyWith<_$_AnnotationDto> get copyWith =>
      throw _privateConstructorUsedError;
}
