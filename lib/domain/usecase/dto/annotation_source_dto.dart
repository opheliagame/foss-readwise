import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/domain/repository/model/annotation_source.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';

part 'annotation_source_dto.freezed.dart';

@freezed
class AnnotationSourceDto with _$AnnotationSourceDto {
  AnnotationSourceDto._();

  factory AnnotationSourceDto({
    String? id,
    required String name,
  }) = _AnnotationSourceDto;

  AnnotationSource get entity => AnnotationSource(name: name);

  AnnotationSourceState get state => AnnotationSourceState(id: id, name: name);
}
