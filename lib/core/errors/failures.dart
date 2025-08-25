import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with Api server');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with Api server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with Api server');

      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certificate with Api server');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to Api server was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure(
          'Connection to Api server failed due to internet connection',
        );
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
     return ServerFailure('No internet connection');
    }
        return ServerFailure('Unexpected error, please try again!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, please try later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, please try later!');
    } else {
      return ServerFailure('Opps there was an error, please try later!');
    }
  }
}
