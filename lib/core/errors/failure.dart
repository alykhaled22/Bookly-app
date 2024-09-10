import 'package:dio/dio.dart';

abstract class Failure {
  final String errMsg;

  Failure({required this.errMsg});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errMsg});
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMsg: "Connection Timeout with Api Server");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errMsg: "Send Timeout with Api Server");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMsg: "Receive Timeout with Api Server");
      case DioExceptionType.badCertificate:
        return ServerFailure(errMsg: "Bad Certificate with Api Server");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data!);
      case DioExceptionType.cancel:
        return ServerFailure(errMsg: "Requst to Api Server was Canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(errMsg: "Connection with Api Server Failed");
      case DioExceptionType.unknown:
        if (dioException.message!.contains("SocketException")) {
          return ServerFailure(errMsg: "No Internet Connection");
        }
        return ServerFailure(errMsg: "Unexpected error, Try again later!");
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
          errMsg: "Your request is not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure(errMsg: "Internal Server error, Please try later!");
    } else {
      return ServerFailure(errMsg: "There was an error, Please try later!");
    }
  }
}
