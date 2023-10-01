import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/repository/annotation_repository.dart';
import 'package:my_readwise/domain/repository/annotation_source_repository.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_dto.dart';
import 'package:my_readwise/domain/usecase/dto/annotation_source_dto.dart';
import 'package:my_readwise/domain/usecase/fetch_annotation_usecase.dart';
import 'package:my_readwise/providers/repository.dart';

class FetchAnnotationUsecaseImpl implements FetchAnnotationUsecase {
  FetchAnnotationUsecaseImpl(this._ref);
  final ProviderRef<FetchAnnotationUsecase> _ref;

  late AnnotationRepository annotationRepository =
      _ref.read(annotationRepositoryProvider);

  late AnnotationSourceRepository annotationSourceRepository =
      _ref.read(annotationSourceRepositoryProvider);

  @override
  Result<Stream<List<AnnotationDto>>> fetch() {
    return Result.guard(() {
      final result = annotationRepository.fetch();
      // result.dataOrThrow.map((event) => null)
      return result.dataOrThrow.map((list) => list.map((e) => e.dto).toList());
    });
  }

  @override
  Result<Stream<List<AnnotationSourceDto>>> fetchSources() {
    return Result.guard(() {
      final result = annotationSourceRepository.fetch();
      // result.dataOrThrow.map((event) => null)
      return result.dataOrThrow.map((list) => list.map((e) => e.dto).toList());
    });
  }
}
