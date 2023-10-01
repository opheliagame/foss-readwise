import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/domain/repository/model/annotation.dart';
import 'package:my_readwise/ui/state/annotation_state.dart';

part 'annotation_dto.freezed.dart';

@freezed
class AnnotationDto with _$AnnotationDto {
  AnnotationDto._();

  factory AnnotationDto({
    String? id,
    String? sourceId,
    required String text,
  }) = _AnnotationDto;

  Annotation get entity => Annotation(text: text, sourceId: sourceId);

  AnnotationState get state =>
      AnnotationState(id: id, sourceId: sourceId, text: text);
}
