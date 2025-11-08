
class AppException implements Exception {
  final message;
  final prefix;

  AppException({this.message, this.prefix});

  @override
  String toString() {
    return '$message, $prefix';
  }
}

class NoInternetException extends AppException {
  NoInternetException([String? message])
    : super(message: '',prefix: 'No Internet Connection');
}

class UnAuthorizeException extends AppException {
  UnAuthorizeException([String? message])
      : super(message: '',prefix: 'You\'re not authorized');
}

class RequestTimeOutException extends AppException {
  RequestTimeOutException([String? message])
      : super(message: '',prefix: 'Time Out');
}


class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message: message,prefix: '');
}
