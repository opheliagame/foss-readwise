import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/repository/annotation_repository.dart';
import 'package:my_readwise/domain/repository/model/annotation.dart';
import 'package:my_readwise/domain/repository/model/annotation_source.dart';
import 'package:my_readwise/domain/result.dart';
import 'package:my_readwise/providers/provider.dart';

class AnnotationRepositoryImpl implements AnnotationRepository {
  AnnotationRepositoryImpl(this._ref);
  final ProviderRef<AnnotationRepository> _ref;

  late FirebaseFirestore db = _ref.read(dbInstanceProvider);

  @override
  Result<Stream<List<Annotation>>> fetch() {
    return Result.guard(() {
      // final querySnapshot = await db.collection('annotations').get();
      final stream = db
          .collection('annotations')
          .snapshots()
          .map((snapshot) => snapshot.docs.map((doc) {
                return Annotation.fromSnapshot(doc);
              }).toList());

      return stream;

      // return querySnapshot.docs
      //     .map((doc) => Annotation.fromJson(doc.data()))
      //     .toList();
    });
  }

  // @override
  // Future<Annotation?> fetchOne(int id) {
  //   final result = isar.annotations.get(id);
  //   return result;
  // }

  @override
  Future<Result<void>> create(Annotation annotation, AnnotationSource notused) {
    return Result.guardFuture(() async {
      print(annotation.sourceId);
      final ref = db.collection('sources').doc(annotation.sourceId);

      final doc = await db.collection('annotations').add(annotation.toMap(ref));
      return;
    });
  }

  // @override
  // int save(Annotation annotation) {
  //   return isar.writeTxnSync(() {
  //     final result = isar.annotations.putSync(annotation);
  //     return result;
  //   });
  // }

  @override
  Future<Result<void>> delete(String id) {
    return Result.guardFuture(() async {
      final doc = await db.collection('annotations').doc(id).delete();
      return;
    });
  }
}
