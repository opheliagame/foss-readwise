import 'package:my_readwise/domain/result.dart';

abstract class DeleteAnnotationUsecase {
  Future<Result<void>> delete(String id);
}
