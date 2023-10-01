import 'package:my_readwise/domain/repository/annotation_repository.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/domain/usecase/delete_annotation_usecase.dart';
import 'package:my_readwise/providers/provider.dart';
import 'package:my_readwise/providers/repository.dart';

class DeleteAnnotationUsecaseImpl implements DeleteAnnotationUsecase {
  DeleteAnnotationUsecaseImpl(this._ref);
  DeleteAnnotationUsecaseRef _ref;

  late final AnnotationRepository annotationRepository =
      _ref.read(annotationRepositoryProvider);

  @override
  Future<Result<void>> delete(String id) {
    return Result.guardFuture(() async {
      await annotationRepository.delete(id);
    });
  }
}
