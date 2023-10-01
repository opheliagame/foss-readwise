import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';

abstract class SaveAnnotationUsecase {
  Future<Result<void>> save(
      AnnotationDto annotation, AnnotationSourceDto source);
}
