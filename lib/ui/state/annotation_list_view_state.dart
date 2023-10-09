import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';
import 'package:my_readwise/ui/state/annotation_state.dart';

part 'annotation_list_view_state.freezed.dart';

@freezed
class AnnotationListViewState with _$AnnotationListViewState {
  factory AnnotationListViewState({
    required AnnotationState annotation,
    required AnnotationSourceState source,
  }) = _AnnotationListViewState;
}
