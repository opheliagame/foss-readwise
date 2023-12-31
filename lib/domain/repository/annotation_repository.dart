import 'package:my_readwise/domain/repository/model/annotation.dart';
import 'package:my_readwise/domain/result.dart';

abstract class AnnotationRepository {
  Result<Stream<List<Annotation>>> fetch();

  // Future<Annotation?> fetchOne(int id);

  Future<Result<void>> create(Annotation annotation);

  // int save(Annotation annotation);

  Future<Result<void>> delete(String id);
}
