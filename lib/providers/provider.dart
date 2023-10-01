import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/usecase/delete_annotation_usecase.dart';
import 'package:my_readwise/domain/usecase/fetch_annotation_usecase.dart';
import 'package:my_readwise/domain/usecase/save_annotation_usecase.dart';
import 'package:my_readwise/infrastructure/usecase/delete_annotation_usecase_impl.dart';
import 'package:my_readwise/infrastructure/usecase/fetch_annotation_usecase_impl.dart';
import 'package:my_readwise/infrastructure/usecase/save_annotation_usecase_impl.dart';
import 'package:my_readwise/ui/screens/annotation_create_view_model.dart';
import 'package:my_readwise/ui/screens/annotation_list_view_model.dart';
import 'package:my_readwise/ui/state/annotation_create_state.dart';
import 'package:my_readwise/ui/state/annotation_source_state.dart';
import 'package:my_readwise/ui/state/annotation_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@Riverpod()
FirebaseFirestore dbInstance(DbInstanceRef ref) {
  final db = FirebaseFirestore.instance;
  return db;
}

@Riverpod()
FetchAnnotationUsecase fetchAnnotationUsecase(FetchAnnotationUsecaseRef ref) {
  return FetchAnnotationUsecaseImpl(ref);
}

@Riverpod()
SaveAnnotationUsecase saveAnnotationUsecase(SaveAnnotationUsecaseRef ref) {
  return SaveAnnotationUsecaseImpl(ref);
}

@Riverpod()
DeleteAnnotationUsecase deleteAnnotationUsecase(
    DeleteAnnotationUsecaseRef ref) {
  return DeleteAnnotationUsecaseImpl(ref);
}

final annotationsProvider = StreamProvider<List<AnnotationState>>((ref) {
  final result = ref.read(fetchAnnotationUsecaseProvider).fetch();

  return result.dataOrThrow.map((list) => list.map((e) => e.state).toList());
});

final selectedSourceProvider =
    StateProvider<AnnotationSourceState?>((ref) => null);

final filteredAnnotationsProvider = Provider<List<AnnotationState>>((ref) {
  final annotations = ref.watch(annotationsProvider);
  final selectedSource = ref.watch(selectedSourceProvider);

  if (selectedSource == null) {
    return annotations.value ?? [];
  }
  return annotations.value
          ?.where((element) => element.sourceId == selectedSource.id)
          .toList() ??
      [];
});

final sourcesProvider = StreamProvider<List<AnnotationSourceState>>((ref) {
  final result = ref.read(fetchAnnotationUsecaseProvider).fetchSources();

  return result.dataOrThrow.map((list) => list.map((e) => e.state).toList());
});

final annotationListViewModelProvider = StateNotifierProvider<
        AnnotationListViewModel, AsyncValue<List<AnnotationState>>>(
    (ref) => AnnotationListViewModel(ref: ref));

final annotationCreateViewModelProvider =
    StateNotifierProvider<AnnotationCreateViewModel, AnnotationCreateState>(
        (ref) => AnnotationCreateViewModel(ref: ref));


// @Riverpod()
// List<Annotation> annotations(AnnotationsRef ref) {
//   final repository = await ref.watch(annotationRepositoryProvider.future);
//    repository.fetch();
// }

// @Riverpod()
// Stream<List<AnnotationSource>> annotationSources(
//     AnnotationSourcesRef ref) async* {
//   final repository = await ref.watch(annotationSourceRepositoryProvider.future);
//   yield* repository.fetch();
// }
