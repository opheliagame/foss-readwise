// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotation_create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnnotationCreateState {
  AnnotationState get annotation => throw _privateConstructorUsedError;
  AnnotationSourceState get annotationSource =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnotationCreateStateCopyWith<AnnotationCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationCreateStateCopyWith<$Res> {
  factory $AnnotationCreateStateCopyWith(AnnotationCreateState value,
          $Res Function(AnnotationCreateState) then) =
      _$AnnotationCreateStateCopyWithImpl<$Res, AnnotationCreateState>;
  @useResult
  $Res call(
      {AnnotationState annotation, AnnotationSourceState annotationSource});

  $AnnotationStateCopyWith<$Res> get annotation;
  $AnnotationSourceStateCopyWith<$Res> get annotationSource;
}

/// @nodoc
class _$AnnotationCreateStateCopyWithImpl<$Res,
        $Val extends AnnotationCreateState>
    implements $AnnotationCreateStateCopyWith<$Res> {
  _$AnnotationCreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotation = null,
    Object? annotationSource = null,
  }) {
    return _then(_value.copyWith(
      annotation: null == annotation
          ? _value.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as AnnotationState,
      annotationSource: null == annotationSource
          ? _value.annotationSource
          : annotationSource // ignore: cast_nullable_to_non_nullable
              as AnnotationSourceState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnotationStateCopyWith<$Res> get annotation {
    return $AnnotationStateCopyWith<$Res>(_value.annotation, (value) {
      return _then(_value.copyWith(annotation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AnnotationSourceStateCopyWith<$Res> get annotationSource {
    return $AnnotationSourceStateCopyWith<$Res>(_value.annotationSource,
        (value) {
      return _then(_value.copyWith(annotationSource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AnnotationCreateStateCopyWith<$Res>
    implements $AnnotationCreateStateCopyWith<$Res> {
  factory _$$_AnnotationCreateStateCopyWith(_$_AnnotationCreateState value,
          $Res Function(_$_AnnotationCreateState) then) =
      __$$_AnnotationCreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AnnotationState annotation, AnnotationSourceState annotationSource});

  @override
  $AnnotationStateCopyWith<$Res> get annotation;
  @override
  $AnnotationSourceStateCopyWith<$Res> get annotationSource;
}

/// @nodoc
class __$$_AnnotationCreateStateCopyWithImpl<$Res>
    extends _$AnnotationCreateStateCopyWithImpl<$Res, _$_AnnotationCreateState>
    implements _$$_AnnotationCreateStateCopyWith<$Res> {
  __$$_AnnotationCreateStateCopyWithImpl(_$_AnnotationCreateState _value,
      $Res Function(_$_AnnotationCreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? annotation = null,
    Object? annotationSource = null,
  }) {
    return _then(_$_AnnotationCreateState(
      annotation: null == annotation
          ? _value.annotation
          : annotation // ignore: cast_nullable_to_non_nullable
              as AnnotationState,
      annotationSource: null == annotationSource
          ? _value.annotationSource
          : annotationSource // ignore: cast_nullable_to_non_nullable
              as AnnotationSourceState,
    ));
  }
}

/// @nodoc

class _$_AnnotationCreateState implements _AnnotationCreateState {
  _$_AnnotationCreateState(
      {this.annotation = const AnnotationState(text: ''),
      this.annotationSource = const AnnotationSourceState(name: '')});

  @override
  @JsonKey()
  final AnnotationState annotation;
  @override
  @JsonKey()
  final AnnotationSourceState annotationSource;

  @override
  String toString() {
    return 'AnnotationCreateState(annotation: $annotation, annotationSource: $annotationSource)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnotationCreateState &&
            (identical(other.annotation, annotation) ||
                other.annotation == annotation) &&
            (identical(other.annotationSource, annotationSource) ||
                other.annotationSource == annotationSource));
  }

  @override
  int get hashCode => Object.hash(runtimeType, annotation, annotationSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnotationCreateStateCopyWith<_$_AnnotationCreateState> get copyWith =>
      __$$_AnnotationCreateStateCopyWithImpl<_$_AnnotationCreateState>(
          this, _$identity);
}

abstract class _AnnotationCreateState implements AnnotationCreateState {
  factory _AnnotationCreateState(
      {final AnnotationState annotation,
      final AnnotationSourceState annotationSource}) = _$_AnnotationCreateState;

  @override
  AnnotationState get annotation;
  @override
  AnnotationSourceState get annotationSource;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationCreateStateCopyWith<_$_AnnotationCreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
