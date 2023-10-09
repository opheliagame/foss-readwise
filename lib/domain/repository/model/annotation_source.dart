import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/domain/repository/converters.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';

part 'annotation_source.freezed.dart';
part 'annotation_source.g.dart';

@freezed
class AnnotationSource with _$AnnotationSource {
  AnnotationSource._();

  @DocumentReferenceJsonConverter()
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake, includeIfNull: false)
  factory AnnotationSource({
    @JsonKey(includeToJson: false) DocumentReference? ref,
    required String name,
    required String url,
  }) = _AnnotationSource;

  factory AnnotationSource.fromJson(Map<String, dynamic> json) =>
      _$AnnotationSourceFromJson(json);

  factory AnnotationSource.fromSnapshot(DocumentSnapshot snapshot) =>
      AnnotationSource.fromJson(snapshot.data() as Map<String, dynamic>)
          .copyWith(ref: snapshot.reference);

  AnnotationSourceDto get dto =>
      AnnotationSourceDto(id: ref?.id, name: name, url: url);
}
