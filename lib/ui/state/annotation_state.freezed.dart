// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnotationState {
  String? get id => throw _privateConstructorUsedError;
  String? get sourceId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnotationStateCopyWith<AnnotationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationStateCopyWith<$Res> {
  factory $AnnotationStateCopyWith(
          AnnotationState value, $Res Function(AnnotationState) then) =
      _$AnnotationStateCopyWithImpl<$Res, AnnotationState>;
  @useResult
  $Res call({String? id, String? sourceId, String text});
}

/// @nodoc
class _$AnnotationStateCopyWithImpl<$Res, $Val extends AnnotationState>
    implements $AnnotationStateCopyWith<$Res> {
  _$AnnotationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_AnnotationStateCopyWith<$Res>
    implements $AnnotationStateCopyWith<$Res> {
  factory _$$_AnnotationStateCopyWith(
          _$_AnnotationState value, $Res Function(_$_AnnotationState) then) =
      __$$_AnnotationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? sourceId, String text});
}

/// @nodoc
class __$$_AnnotationStateCopyWithImpl<$Res>
    extends _$AnnotationStateCopyWithImpl<$Res, _$_AnnotationState>
    implements _$$_AnnotationStateCopyWith<$Res> {
  __$$_AnnotationStateCopyWithImpl(
      _$_AnnotationState _value, $Res Function(_$_AnnotationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? sourceId = freezed,
    Object? text = null,
  }) {
    return _then(_$_AnnotationState(
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

class _$_AnnotationState extends _AnnotationState {
  const _$_AnnotationState({this.id, this.sourceId, required this.text})
      : super._();

  @override
  final String? id;
  @override
  final String? sourceId;
  @override
  final String text;

  @override
  String toString() {
    return 'AnnotationState(id: $id, sourceId: $sourceId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnotationState &&
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
  _$$_AnnotationStateCopyWith<_$_AnnotationState> get copyWith =>
      __$$_AnnotationStateCopyWithImpl<_$_AnnotationState>(this, _$identity);
}

abstract class _AnnotationState extends AnnotationState {
  const factory _AnnotationState(
      {final String? id,
      final String? sourceId,
      required final String text}) = _$_AnnotationState;
  const _AnnotationState._() : super._();

  @override
  String? get id;
  @override
  String? get sourceId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationStateCopyWith<_$_AnnotationState> get copyWith =>
      throw _privateConstructorUsedError;
}
