import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';
import 'package:my_readwise/ui/state/annotation_state.dart';

part 'annotation_create_state.freezed.dart';

@freezed
class AnnotationCreateState with _$AnnotationCreateState {
  factory AnnotationCreateState({
    @Default(AnnotationState(text: '')) AnnotationState annotation,
    @Default(AnnotationSourceState(name: ''))
    AnnotationSourceState annotationSource,
  }) = _AnnotationCreateState;
}
