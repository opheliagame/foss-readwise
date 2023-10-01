import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/save_annotation_usecase.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/ui/state/annotation_create_state.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';

class AnnotationCreateViewModel extends StateNotifier<AnnotationCreateState> {
  StateNotifierProviderRef _ref;
  AnnotationCreateViewModel({required StateNotifierProviderRef ref})
      : _ref = ref,
        super(AnnotationCreateState()) {
    // load();
  }

  late final SaveAnnotationUsecase saveAnnotationUsecase =
      _ref.read(saveAnnotationUsecaseProvider);

  // Future<void> load() async {
  //   state = AsyncValue.data(AnnotationState(
  //     text: '',
  //   ));
  // }

  void setText(String text) {
    state = state.copyWith(annotation: state.annotation.copyWith(text: text));

    // if (state.valueOrNull == null) return;
    // state = AsyncValue.data(state.value!.copyWith(text: text));
  }

  void setSource(AnnotationSourceState source) {
    state = state.copyWith(annotationSource: source);
  }

  void setSourceId(AnnotationSourceState source) {
    state = state.copyWith(
        annotation: state.annotation.copyWith(sourceId: source.id));
  }

  Future<Result<void>> save() {
    return Result.guardFuture(() async {
      return saveAnnotationUsecase
          .save(state.annotation.dto, state.annotationSource.dto)
          .then((value) => value.dataOrThrow);
    });
  }
}
