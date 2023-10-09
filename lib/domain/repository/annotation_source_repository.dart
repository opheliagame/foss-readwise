import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_readwise/domain/repository/model/annotation_source.dart';
import 'package:my_readwise/domain/result.dart';

abstract class AnnotationSourceRepository {
  Result<Stream<List<AnnotationSource>>> fetch();

  // Future<AnnotationSource?> fetchOne(int id);

  Future<Result<DocumentReference>> create(AnnotationSource annotation);

  // Future<bool> delete(int id);
}
