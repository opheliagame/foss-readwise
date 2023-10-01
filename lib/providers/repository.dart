import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_readwise/domain/repository/annotation_repository.dart';
import 'package:my_readwise/domain/repository/annotation_source_repository.dart';
import 'package:my_readwise/infrastructure/repository/annotation_repository_impl.dart';
import 'package:my_readwise/infrastructure/repository/annotation_source_repository_impl.dart';

final annotationRepositoryProvider = Provider<AnnotationRepository>((ref) {
  return AnnotationRepositoryImpl(ref);
});

final annotationSourceRepositoryProvider =
    Provider<AnnotationSourceRepository>((ref) {
  return AnnotationSourceRepositoryImpl(ref);
});
