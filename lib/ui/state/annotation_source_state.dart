import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';

part 'annotation_source_state.freezed.dart';

@freezed
class AnnotationSourceState with _$AnnotationSourceState {
  const AnnotationSourceState._();

  const factory AnnotationSourceState({
    String? id,
    required String name,
    required String url,
  }) = _AnnotationSourceState;

  AnnotationSourceDto get dto =>
      AnnotationSourceDto(id: id, name: name, url: url);

  @override
  String toString() {
    return name;
  }
}
