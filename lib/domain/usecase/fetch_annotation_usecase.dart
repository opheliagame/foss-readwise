import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';

abstract class FetchAnnotationUsecase {
  Result<Stream<List<AnnotationDto>>> fetch();
  Result<Stream<List<AnnotationSourceDto>>> fetchSources();
}
