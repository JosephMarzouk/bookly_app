import 'package:dio/dio.dart';

abstract class Failure{
  final String errMessage;

  Failure(this.errMessage);
  
}

class ServerFailure extends Failure{
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError)
  {
    switch (dioError.type)
    {
      
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Conection Timeout with ApiServer');
        
      case DioExceptionType.sendTimeout:
         return ServerFailure('Send Timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Send Timeout with ApiServer');
        
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad certficate');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode,dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceld');

      case DioExceptionType.connectionError:
        return ServerFailure('No internet connection');

      case DioExceptionType.unknown:
         return  ServerFailure('oops there was an error, please try again later');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response)
  {
    if(statusCode==400 || statusCode==401 || statusCode==403)
    {
      return  ServerFailure(response['error']['message']);
    }
    else if(statusCode==404)
    {
      return ServerFailure('Your request not found, please try again later');
    }
    else if (statusCode ==500)
    {
      return ServerFailure('Server error , please try again later');
    }
    else {
     return  ServerFailure('oops there was an error, please try again later');
    }
  }
}