// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annotation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Annotation _$$_AnnotationFromJson(Map<String, dynamic> json) =>
    _$_Annotation(
      ref: const DocumentReferenceJsonConverter().fromJson(json['ref']),
      text: json['text'] as String,
      source: const DocumentReferenceJsonConverter().fromJson(json['source']),
      sourceId: json['source_id'] as String?,
    );

Map<String, dynamic> _$$_AnnotationToJson(_$_Annotation instance) {
  final val = <String, dynamic>{
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('source_id', instance.sourceId);
  return val;
}
