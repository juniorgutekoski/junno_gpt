/// Classe base para o padrão Result
sealed class Result<T> {
  /// Método fold para lidar com ambos os casos (sucesso ou erro)
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Exception error) onError,
  });

  /// Getter para acessar o valor (Ok) ou lançar uma exceção se for um erro
  T get value;

  /// Getter para acessar o erro (Error) ou lançar uma exceção se for sucesso
  Exception get error;
}

/// Subclasse de Result para valores de sucesso
final class Ok<T> extends Result<T> {
  Ok(this._value);

  final T _value;

  @override
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Exception error) onError,
  }) {
    return onSuccess(_value);
  }

  @override
  T get value => _value;

  @override
  Exception get error =>
      throw StateError('Cannot access error from an Ok result');
}

/// Subclasse de Result para erros
final class Error<T> extends Result<T> {
  Error(this._error);

  final Exception _error;

  @override
  R fold<R>({
    required R Function(T value) onSuccess,
    required R Function(Exception error) onError,
  }) {
    return onError(_error);
  }

  @override
  T get value => throw StateError('Cannot access value from an Error result');

  @override
  Exception get error => _error;
}
