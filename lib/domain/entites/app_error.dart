class AppError {
  final AppErrorType type;
  late String message;
  final int? code;

  AppError({required this.type, this.code, String? message}) {
    switch (type) {
      case AppErrorType.network:
        this.message = message ??
            'oh snap! it seems like you\'ve traveled to the wilderness';
        break;
      case AppErrorType.api:
        this.message = message ?? 'Oops! something went wrong';
        break;
      case AppErrorType.unknown:
        this.message = message ?? 'Something went wrong';
        break;
      case AppErrorType.timeout:
        this.message = message ??
            'It seems connection is slow or response is taking too long! Please try again later.';
        break;
    }
  }

  @override
  String toString() {
    return 'AppError{type: $type, message: $message, code: $code}';
  }
}

enum AppErrorType {
  network,
  api,
  timeout,
  unknown;
}
