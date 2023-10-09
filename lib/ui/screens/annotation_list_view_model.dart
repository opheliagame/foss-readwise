import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/usecase/delete_annotation_usecase.dart';
import 'package:my_readwise/domain/usecase/fetch_annotation_usecase.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/ui/state/annotation_state.dart';

class AnnotationListViewModel
    extends StateNotifier<AsyncValue<List<AnnotationState>>> {
  final StateNotifierProviderRef _ref;
  AnnotationListViewModel({required StateNotifierProviderRef ref})
      : _ref = ref,
        super(const AsyncLoading()) {
    load();
  }

  late FetchAnnotationUsecase fetchAnnotationUsecase =
      _ref.read(fetchAnnotationUsecaseProvider);
  late DeleteAnnotationUsecase deleteAnnotationUsecase =
      _ref.read(deleteAnnotationUsecaseProvider);

  Future<void> load() async {
    final result = fetchAnnotationUsecase.fetch();
    result.when(
      success: (data) async {
        final list = data.map((list) => list.map((e) => e.state).toList());
        state = const AsyncData([]);
      },
      failure: (error, stack) {
        state = AsyncError(error, stack);
      },
    );
  }

  Future<void> delete(AnnotationState annotationState) async {
    String id = annotationState.id!;
    await deleteAnnotationUsecase.delete(id);
  }
}
