import 'package:extended/extended.dart';
import 'package:flutter/services.dart';

/// Generic error handler
///
/// This handles all kinds of error. Just call this method with error object and
/// it will display error message nicely.
Future<void> error(e, [String title = 'ERROR']) {
  // print('functions/error.dart > error happened: $e');

  String content = '';
  // If the error message is a string, then display the string.
  if (e is String) {
    content = e;
  }
  // if the error is a PlatfromException, then display code and message.
  else if (e is PlatformException) {
    title = 'PlatformException Error';
    content = "${e.code}: ${e.message!}";
  }
  // If the error is a TypeError, then handle is nicely.
  else if (e.runtimeType.toString() == '_TypeError') {
    final errstr = e.toString();
    if (errstr.contains('Future') && errstr.contains('is not a subtype of type')) {
      title = 'Await mistake';
      content = 'It is a mistake.\n\nHe should use await on Future operation.\n\n' + e.toString();
    } else {
      title = "Developer mistake!";
      content = 'Type error: ' + e.toString();
    }
  } else if (e.runtimeType.toString() == "NoSuchMethodError") {
    if (e.toString().contains("Closure call with mismatched arguments")) {
      title = 'Developer mistake!';
      content = 'Argument mismatch on closure call.\n\n$e';
    } else {
      title = 'Developer mistake.';
      content = "NoSuchMethodError; $e";
    }
  }

  /// FirebaseException handler
  else if (e.runtimeType.toString() == 'FirebaseException') {
    title = 'Firebase Exception';
    content = '${e.message}\n( ${e.code} )';
  }
  // if it is a map error object and it has code and message.
  else if (e != null && e is Map && e['code'] != null && e['message'] != null) {
    /// if the object has code and message, then handle it.
    content = "${e['message']} (${e['code']})";
  }
  // if it is a map error object and it has only message.
  else if (e != null && e is Map && e['message'] != null) {
    if (e['message'] is String) {
      content = e['message'];
    }
  }
  // Display error message if anything else.
  else {
    content = e.toString();
  }

  return alert(title, content);
}
