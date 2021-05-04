import 'package:mindamigo/constants/application.dart';

String errorPrinter(Error error,StackTrace stackTrace,String identityCode){ // UID:U.EP.00001

  String message ='''
  ================================================
  Identity Code [${Emoji.redCross}] :: ${identityCode}
  --------------------------------
  Error [${Emoji.caution}]:: ${error } 
  --------------------------------
  StackTrace [${Emoji.expressionlessFace}]:: ${stackTrace}
  ================================================ ''';
  return message;
}

String httpErrorPrinter(String url,Error error,StackTrace stackTrace,String identityCode){ // UID:U.EP.00001

  String message ='''
  URL [${Emoji.link}] :: $url
  ================================================
  Identity Code [${Emoji.redCross}] :: ${identityCode}
  --------------------------------
  Error [${Emoji.caution}]:: ${error } 
  --------------------------------
  StackTrace [${Emoji.expressionlessFace}]:: ${stackTrace}
  ================================================ ''';
  return message;
}