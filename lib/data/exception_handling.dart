import 'package:flutter/material.dart';
class ExceptionHandling  implements Exception
{

   final _massage;
   final _prefex;

   ExceptionHandling([this._massage,this._prefex]);

   String toString ()
   {
     return "$_prefex$_massage";
   }


}
class InternetException extends ExceptionHandling

{

     InternetException([String? massage]);
}

class ServerException extends ExceptionHandling

{

  ServerException([String? massage]);
}

class RequestTimeOut extends ExceptionHandling

{

  RequestTimeOut([String? massage]);
}

class UserAllReadyRegister extends ExceptionHandling

{

  UserAllReadyRegister([String? massage]);
}

class InvalidUrlException extends ExceptionHandling

{

  InvalidUrlException([String? massage]);
}

class FatchingDataException extends ExceptionHandling

{

  FatchingDataException([String? massage]);
}
