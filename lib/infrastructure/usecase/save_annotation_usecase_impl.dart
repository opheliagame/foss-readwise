import 'package:my_readwise/domain/repository/annotation_repository.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';
import 'package:my_readwise/domain/usecase/save_annotation_usecase.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/providers/repository.dart';

class SaveAnnotationUsecaseImpl implements SaveAnnotationUsecase {
  SaveAnnotationUsecaseImpl(this._ref);
  final SaveAnnotationUsecaseRef _ref;

  late AnnotationRepository annotationRepository =
      _ref.read(annotationRepositoryProvider);
  // final AnnotationSourceRepository annotationSourceRepository;

  @override
  Future<Result<void>> save(
      AnnotationDto annotation, AnnotationSourceDto source) async {
    return Result.guardFuture(() async {
      final result =
          await annotationRepository.create(annotation.entity, source.entity);
    });
  }
}
