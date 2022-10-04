import 'package:equatable/equatable.dart';
import 'package:watchers_widget/src/core/log/i_log.dart';

void unit;

class Result<T, E extends Exception> {
  bool get isError => this is Error<T, E>;
  bool get isSuccess => this is Success<T, E>;

  Error<T, E> get asError => this as Error<T, E>;
  Success<T, E> get asSuccess => this as Success<T, E>;

  E get errorValue => asError.error;
  StackTrace? get errorStackTrace => asError.stackTrace;
  T get successValue => asSuccess.value;

  void match({
    required Function(T value) onSuccess,
    required Function(E error) onError,
  }) {
    if (isSuccess) {
      onSuccess(asSuccess.value);
      return;
    }
    onError(asError.error);
  }

  T2 fold<T2>({
    required T2 Function(T value) onSuccess,
    required T2 Function(E error) onError,
  }) {
    if (isSuccess) {
      return onSuccess(asSuccess.value);
    }

    return onError(asError.error);
  }

  Result<T2, Exception> andThen<T2, E2 extends Exception>(
    Result<T2, E2> Function(T) thenFunction,
  ) {
    if (isSuccess) {
      return thenFunction(successValue);
    }

    return Error(errorValue, errorStackTrace);
  }

  // E getErrorOrElse(E Function() orElse) => errorResult ?? orElse();
  // T getValueOrElse(T Function() orElse) => successResult ?? orElse();
}

class Success<T, E extends Exception> extends Result<T, E> with EquatableMixin {
  final T _value;

  T get value => _value;

  Success(this._value);

  @override
  String toString() => 'Success(_value: $_value)';

  @override
  List<Object?> get props => [_value];
}

class Error<T, E extends Exception> extends Result<T, E> {
  final E _error;
  final StackTrace? _stackTrace;

  E get error => _error;
  StackTrace? get stackTrace => _stackTrace;

  Error(this._error, [this._stackTrace]) {
    log.error(toString());
  }

  @override
  String toString() => 'Error: $_error\nStackTrace:\n$_stackTrace';
}
