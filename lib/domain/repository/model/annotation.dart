import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/domain/repository/converters.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';

part 'annotation.freezed.dart';
part 'annotation.g.dart';

@freezed
class Annotation with _$Annotation {
  Annotation._();

  @DocumentReferenceJsonConverter()
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  factory Annotation({
    @JsonKey(includeToJson: false) DocumentReference? ref,
    required String text,
    @JsonKey(includeToJson: false) DocumentReference? source,
    String? sourceId,
  }) = _Annotation;

  factory Annotation.fromJson(Map<String, dynamic> json) =>
      _$AnnotationFromJson(json);

  factory Annotation.fromSnapshot(DocumentSnapshot snapshot) =>
      Annotation.fromJson(snapshot.data() as Map<String, dynamic>)
          .copyWith(ref: snapshot.reference);

  Map<String, dynamic> toMap(DocumentReference source) => {
        'text': text,
        'source': source,
      };

  AnnotationDto get dto =>
      AnnotationDto(id: ref?.id, sourceId: source?.id, text: text);
}
