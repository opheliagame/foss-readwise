import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';

part 'annotation_state.freezed.dart';

@freezed
class AnnotationState with _$AnnotationState {
  const AnnotationState._();

  const factory AnnotationState({
    String? id,
    String? sourceId,
    required String text,
  }) = _AnnotationState;

  AnnotationDto get dto =>
      AnnotationDto(id: id, sourceId: sourceId, text: text);
}
