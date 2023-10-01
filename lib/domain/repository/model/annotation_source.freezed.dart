// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotation_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnotationSource _$AnnotationSourceFromJson(Map<String, dynamic> json) {
  return _AnnotationSource.fromJson(json);
}

/// @nodoc
mixin _$AnnotationSource {
  @JsonKey(includeToJson: false)
  DocumentReference<Object?>? get ref => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnotationSourceCopyWith<AnnotationSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnotationSourceCopyWith<$Res> {
  factory $AnnotationSourceCopyWith(
          AnnotationSource value, $Res Function(AnnotationSource) then) =
      _$AnnotationSourceCopyWithImpl<$Res, AnnotationSource>;
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) DocumentReference<Object?>? ref,
      String name});
}

/// @nodoc
class _$AnnotationSourceCopyWithImpl<$Res, $Val extends AnnotationSource>
    implements $AnnotationSourceCopyWith<$Res> {
  _$AnnotationSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnnotationSourceCopyWith<$Res>
    implements $AnnotationSourceCopyWith<$Res> {
  factory _$$_AnnotationSourceCopyWith(
          _$_AnnotationSource value, $Res Function(_$_AnnotationSource) then) =
      __$$_AnnotationSourceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeToJson: false) DocumentReference<Object?>? ref,
      String name});
}

/// @nodoc
class __$$_AnnotationSourceCopyWithImpl<$Res>
    extends _$AnnotationSourceCopyWithImpl<$Res, _$_AnnotationSource>
    implements _$$_AnnotationSourceCopyWith<$Res> {
  __$$_AnnotationSourceCopyWithImpl(
      _$_AnnotationSource _value, $Res Function(_$_AnnotationSource) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = freezed,
    Object? name = null,
  }) {
    return _then(_$_AnnotationSource(
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as DocumentReference<Object?>?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@DocumentReferenceJsonConverter()
@JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
class _$_AnnotationSource extends _AnnotationSource {
  _$_AnnotationSource(
      {@JsonKey(includeToJson: false) this.ref, required this.name})
      : super._();

  factory _$_AnnotationSource.fromJson(Map<String, dynamic> json) =>
      _$$_AnnotationSourceFromJson(json);

  @override
  @JsonKey(includeToJson: false)
  final DocumentReference<Object?>? ref;
  @override
  final String name;

  @override
  String toString() {
    return 'AnnotationSource(ref: $ref, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnnotationSource &&
            (identical(other.ref, ref) || other.ref == ref) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ref, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnnotationSourceCopyWith<_$_AnnotationSource> get copyWith =>
      __$$_AnnotationSourceCopyWithImpl<_$_AnnotationSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnnotationSourceToJson(
      this,
    );
  }
}

abstract class _AnnotationSource extends AnnotationSource {
  factory _AnnotationSource(
      {@JsonKey(includeToJson: false) final DocumentReference<Object?>? ref,
      required final String name}) = _$_AnnotationSource;
  _AnnotationSource._() : super._();

  factory _AnnotationSource.fromJson(Map<String, dynamic> json) =
      _$_AnnotationSource.fromJson;

  @override
  @JsonKey(includeToJson: false)
  DocumentReference<Object?>? get ref;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_AnnotationSourceCopyWith<_$_AnnotationSource> get copyWith =>
      throw _privateConstructorUsedError;
}
