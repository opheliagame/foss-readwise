import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const Result._();

  const factory Result.success({required T data}) = Success<T>;

  const factory Result.failure(
      {required Exception error, required StackTrace stack}) = Failure<T>;

  static Result<T> guard<T>(T Function() body) {
    try {
      return Result.success(data: body());
    } on Exception catch (e, stack) {
      return Result.failure(error: e, stack: stack);
    }
  }

  static Future<Result<T>> guardFuture<T>(Future<T> Function() future) async {
    try {
      return Result.success(data: await future());
    } on Exception catch (e, stack) {
      return Result.failure(error: e, stack: stack);
    }
  }

  bool get isSuccess =>
      when(success: (data) => true, failure: (e, stack) => false);

  bool get isFailure => !isSuccess;

  // void ifSuccess(Function(T data) body) {
  //   maybeWhen(
  //     success: (data) => body(data),
  //     orElse: () {
  //       // no-op
  //     },
  //   );
  // }

  // void ifFailure(Function(e) body) {
  //   maybeWhen(
  //     failure: (e) => body(e),
  //     orElse: () {
  //       // no-op
  //     },
  //   );
  // }

  T get dataOrThrow {
    return when(
      success: (data) => data,
      failure: (e, stack) => throw e,
    );
  }
}

extension ResultObjectExt<T> on T {
  Result<T> get asSuccess => Result.success(data: this);

  Result<T> asFailure(Exception e, StackTrace stack) =>
      Result.failure(error: e, stack: stack);
}
