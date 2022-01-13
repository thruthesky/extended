import 'package:extended/extended.dart';
import 'package:flutter/services.dart';

/// Generic error handler
///
/// This handles all kinds of error. Just call this method with error object and
/// it will display error message nicely.
error(e) {
  // print('functions/error.dart > error happened: $e');

  // If the error message is a string, then display the string.
  if (e is String) {
    alert('Error', e);
  }
  // if the error is a PlatfromException, then display code and message.
  else if (e is PlatformException) {
    alert('PlatformException Error', "${e.code}: ${e.message!}");
  }
  // If the error is a TypeError, then handle is nicely.
  else if (e.runtimeType.toString() == '_TypeError') {
    final errstr = e.toString();
    if (errstr.contains('Future') &&
        errstr.contains('is not a subtype of type')) {
      alert(
          'Await mistake',
          'It is a mistake.\n\nHe should use await on Future operation.\n\n' +
              e.toString());
    } else {
      alert("Developer mistake!", 'Type error: ' + e.toString());
    }
  } else if (e.runtimeType.toString() == "NoSuchMethodError") {
    if (e.toString().contains("Closure call with mismatched arguments")) {
      alert('Developer mistake!', 'Argument mismatch on closure call.\n\n$e');
    } else {
      alert('Developer mistake.', "NoSuchMethodError; $e");
    }
  }
  // if it is a map error object and it has code and message.
  else if (e != null && e is Map && e['code'] != null && e['message'] != null) {
    /// if the object has code and message, then handle it.
    /// Especially, Firebase Exceptions fall here.
    alert('Error', "${e['message']} (${e['code']})");
  }
  // if it is a map error object and it has only message.
  else if (e != null && e is Map && e['message'] != null) {
    if (e['message'] is String) {
      alert('Assertion error', e['message']);
    }
  }
  // Display error message if anything else.
  else {
    alert('Error', e.toString());
  }
}
