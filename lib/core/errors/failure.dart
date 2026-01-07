import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure({required this.errMessage});
}

class ServerFailure extends Failure {
  const ServerFailure({required super.errMessage});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return const ServerFailure(
          errMessage: 'Connection timeout with Api Server.',
        );
      case DioExceptionType.sendTimeout:
        return const ServerFailure(
          errMessage: 'Send timeout with Api Server.',
        );
      case DioExceptionType.receiveTimeout:
        return const ServerFailure(
          errMessage: 'Receive timeout with Api Server.',
        );
      case DioExceptionType.badCertificate:
        return const ServerFailure(
          errMessage: 'Bad certificate — SSL certificate verification failed.',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioException.response!.statusCode!,
          dioException.response!.data,
        );
      case DioExceptionType.cancel:
        return const ServerFailure(
          errMessage: 'Request to Api Server was cancelled.',
        );
      case DioExceptionType.connectionError:
        return const ServerFailure(
          errMessage: 'No internet connection.',
        );
      case DioExceptionType.unknown:
        return const ServerFailure(
          errMessage: 'Unexpected error, Please try later!',
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errMessage: response['error']['message'],
      );
    } else if (statusCode == 404) {
      return const ServerFailure(
        errMessage: 'Your request not found, Please try later!',
      );
    } else if (statusCode == 500) {
      return const ServerFailure(
        errMessage: 'Internal Server error, Please try later!',
      );
    } else {
      return const ServerFailure(
        errMessage: 'Opps there was an error, Please try again!',
      );
    }
  }
}
