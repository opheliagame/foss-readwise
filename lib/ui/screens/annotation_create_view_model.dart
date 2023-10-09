import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/save_annotation_usecase.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/ui/state/annotation_create_state.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';

class AnnotationCreateViewModel extends StateNotifier<AnnotationCreateState> {
  final StateNotifierProviderRef _ref;
  AnnotationCreateViewModel({required StateNotifierProviderRef ref})
      : _ref = ref,
        super(AnnotationCreateState());

  late final SaveAnnotationUsecase saveAnnotationUsecase =
      _ref.read(saveAnnotationUsecaseProvider);

  void setText(String text) {
    state = state.copyWith(annotation: state.annotation.copyWith(text: text));
  }

  void setSourceId(AnnotationSourceState source) {
    state = state.copyWith(
        annotation: state.annotation.copyWith(sourceId: source.id));
  }

  void setSourceName(String sourceName) {
    state = state.copyWith(
        annotationSource: state.annotationSource.copyWith(name: sourceName));
  }

  Future<Result<void>> save() {
    return Result.guardFuture(() async {
      return saveAnnotationUsecase
          .save(
              annotation: state.annotation.dto,
              source: state.annotation.sourceId != null
                  ? null
                  : state.annotationSource.dto)
          .then((value) {
        _ref.invalidateSelf();
        return value.dataOrThrow;
      });
    });
  }
}
