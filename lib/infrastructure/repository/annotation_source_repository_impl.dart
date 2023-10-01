import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/repository/annotation_source_repository.dart';
import 'package:my_readwise/domain/repository/model/annotation_source.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/providers/provider.dart';

class AnnotationSourceRepositoryImpl implements AnnotationSourceRepository {
  AnnotationSourceRepositoryImpl(this._ref);
  final ProviderRef<AnnotationSourceRepository> _ref;

  late FirebaseFirestore db = _ref.read(dbInstanceProvider);

  @override
  Result<Stream<List<AnnotationSource>>> fetch() {
    return Result.guard(() {
      final stream = db.collection('sources').snapshots().map((snapshot) =>
          snapshot.docs
              .map((doc) => AnnotationSource.fromSnapshot(doc))
              .toList());
      return stream;
    });
  }

  // @override
  // Future<AnnotationSource?> fetchOne(int id) {
  //   final result = isar.annotationSources.get(id);
  //   return result;
  // }

  // @override
  // Future<int> create(AnnotationSource annotation) {
  //   return isar.writeTxn(() {
  //     final result = isar.annotationSources.put(annotation);
  //     return result;
  //   });
  // }

  // @override
  // Future<bool> delete(int id) {
  //   return isar.writeTxn(() {
  //     final result = isar.annotationSources.delete(id);
  //     return result;
  //   });
  // }
}
