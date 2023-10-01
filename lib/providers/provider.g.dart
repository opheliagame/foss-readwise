// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dbInstanceHash() => r'78515407383006d12e69f6e3e6639c30f2eb21b1';

/// See also [dbInstance].
@ProviderFor(dbInstance)
final dbInstanceProvider = AutoDisposeProvider<FirebaseFirestore>.internal(
  dbInstance,
  name: r'dbInstanceProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dbInstanceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DbInstanceRef = AutoDisposeProviderRef<FirebaseFirestore>;
String _$fetchAnnotationUsecaseHash() =>
    r'd7756f34efb8f268984e6cf210a0e7b7efa8d209';

/// See also [fetchAnnotationUsecase].
@ProviderFor(fetchAnnotationUsecase)
final fetchAnnotationUsecaseProvider =
    AutoDisposeProvider<FetchAnnotationUsecase>.internal(
  fetchAnnotationUsecase,
  name: r'fetchAnnotationUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchAnnotationUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchAnnotationUsecaseRef
    = AutoDisposeProviderRef<FetchAnnotationUsecase>;
String _$saveAnnotationUsecaseHash() =>
    r'8b7c61df05b6b11225396f260fea3f06c8b41c24';

/// See also [saveAnnotationUsecase].
@ProviderFor(saveAnnotationUsecase)
final saveAnnotationUsecaseProvider =
    AutoDisposeProvider<SaveAnnotationUsecase>.internal(
  saveAnnotationUsecase,
  name: r'saveAnnotationUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$saveAnnotationUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SaveAnnotationUsecaseRef
    = AutoDisposeProviderRef<SaveAnnotationUsecase>;
String _$deleteAnnotationUsecaseHash() =>
    r'efaae5cde7251ee83512116ef10d34a7b5128634';

/// See also [deleteAnnotationUsecase].
@ProviderFor(deleteAnnotationUsecase)
final deleteAnnotationUsecaseProvider =
    AutoDisposeProvider<DeleteAnnotationUsecase>.internal(
  deleteAnnotationUsecase,
  name: r'deleteAnnotationUsecaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$deleteAnnotationUsecaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DeleteAnnotationUsecaseRef
    = AutoDisposeProviderRef<DeleteAnnotationUsecase>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
