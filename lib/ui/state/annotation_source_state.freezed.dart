// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotation_source_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnotationSourceState {
  String? get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnotationSourceStateCopyWith<AnnotationSourceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationSourceStateCopyWith<$Res> {
  factory $AnnotationSourceStateCopyWith(AnnotationSourceState value,
          $Res Function(AnnotationSourceState) then) =
      _$AnnotationSourceStateCopyWithImpl<$Res, AnnotationSourceState>;
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class _$AnnotationSourceStateCopyWithImpl<$Res,
        $Val extends AnnotationSourceState>
    implements $AnnotationSourceStateCopyWith<$Res> {
  _$AnnotationSourceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnotationSourceStateCopyWith<$Res>
    implements $AnnotationSourceStateCopyWith<$Res> {
  factory _$$_AnnotationSourceStateCopyWith(_$_AnnotationSourceState value,
          $Res Function(_$_AnnotationSourceState) then) =
      __$$_AnnotationSourceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String name});
}

/// @nodoc
class __$$_AnnotationSourceStateCopyWithImpl<$Res>
    extends _$AnnotationSourceStateCopyWithImpl<$Res, _$_AnnotationSourceState>
    implements _$$_AnnotationSourceStateCopyWith<$Res> {
  __$$_AnnotationSourceStateCopyWithImpl(_$_AnnotationSourceState _value,
      $Res Function(_$_AnnotationSourceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
  }) {
    return _then(_$_AnnotationSourceState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnnotationSourceState extends _AnnotationSourceState {
  const _$_AnnotationSourceState({this.id, required this.name}) : super._();

  @override
  final String? id;
  @override
  final String name;

  @override
  String toString() {
    return 'AnnotationSourceState(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnotationSourceState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnotationSourceStateCopyWith<_$_AnnotationSourceState> get copyWith =>
      __$$_AnnotationSourceStateCopyWithImpl<_$_AnnotationSourceState>(
          this, _$identity);
}

abstract class _AnnotationSourceState extends AnnotationSourceState {
  const factory _AnnotationSourceState(
      {final String? id,
      required final String name}) = _$_AnnotationSourceState;
  const _AnnotationSourceState._() : super._();

  @override
  String? get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationSourceStateCopyWith<_$_AnnotationSourceState> get copyWith =>
      throw _privateConstructorUsedError;
}
