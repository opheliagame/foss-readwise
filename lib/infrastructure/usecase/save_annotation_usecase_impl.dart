import 'package:my_readwise/domain/repository/annotation_repository.dart';
import 'package:my_readwise/domain/repository/annotation_source_repository.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';
import 'package:my_readwise/domain/usecase/save_annotation_usecase.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/providers/repository.dart';

class SaveAnnotationUsecaseImpl implements SaveAnnotationUsecase {
  SaveAnnotationUsecaseImpl(this._ref);
  final SaveAnnotationUsecaseRef _ref;

  late final AnnotationRepository annotationRepository =
      _ref.read(annotationRepositoryProvider);
  late final AnnotationSourceRepository annotationSourceRepository =
      _ref.read(annotationSourceRepositoryProvider);

  @override
  Future<Result<void>> save(
      {required AnnotationDto annotation, AnnotationSourceDto? source}) async {
    return Result.guardFuture(() async {
      if (annotation.sourceId != null) {
        await annotationRepository.create(annotation.entity);
      } else {
        assert(source != null);
        // create new annotation source
        // then create annotation
        final sourceRef =
            await annotationSourceRepository.create(source!.entity);
        sourceRef.when(success: (docRef) async {
          final linkedAnnotation = annotation.copyWith(sourceId: docRef.id);

          assert(linkedAnnotation.sourceId != null);
          await annotationRepository.create(linkedAnnotation.entity);
        }, failure: (error, stack) {
          throw error;
        });
      }
    });
  }
}
