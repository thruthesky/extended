/// Puts [element] between every element in [list].
///
/// Example:
///
///     final list1 = intersperse(2, <int>[]); // [];
///     final list2 = intersperse(2, [0]); // [0];
///     final list3 = intersperse(2, [0, 0]); // [0, 2, 0];
///
///     return intersperse(Divider(), children).toList();
///
Iterable<T> intersperse<T>(T element, Iterable<T> iterable) sync* {
  final iterator = iterable.iterator;
  if (iterator.moveNext()) {
    yield iterator.current;
    while (iterator.moveNext()) {
      yield element;
      yield iterator.current;
    }
  }
}

/// Return double from dynamic.
///
/// Use this to transform a string into double.

double toDouble(dynamic v) {
  if (v == null) {
    return 0;
  } else if (v is int) {
    return v.toDouble();
  } else if (v is String) {
    return double.parse(v);
  } else {
    return v;
  }
}

/// Return an int from dynamic.
///
/// Use this to transform a string into int.
int toInt(dynamic v) {
  if (v == null) return 0;
  if (v is int) {
    return v;
  } else {
    return int.parse(v);
  }
}

/// Return a String from dynamic.
///
/// Use this to transform a number into a String.
String toString(dynamic v) {
  if (v == null) {
    return '';
  } else if (v is int) {
    return v.toString();
  } else {
    return v;
  }
}

/// Returns true if the text is HTML.
bool isHtml(String t) {
  t = t.toLowerCase();

  if (t.contains('</h1>')) return true;
  if (t.contains('</h2>')) return true;
  if (t.contains('</h3>')) return true;
  if (t.contains('</h4>')) return true;
  if (t.contains('</h5>')) return true;
  if (t.contains('</h6>')) return true;
  if (t.contains('</hr>')) return true;
  if (t.contains('</li>')) return true;
  if (t.contains('<br>')) return true;
  if (t.contains('<br />')) return true;
  if (t.contains('<p>')) return true;
  if (t.contains('</div>')) return true;
  if (t.contains('</span>')) return true;
  if (t.contains('<img')) return true;
  if (t.contains('</em>')) return true;
  if (t.contains('</b>')) return true;
  if (t.contains('</u>')) return true;
  if (t.contains('</strong>')) return true;
  if (t.contains('</a>')) return true;
  if (t.contains('</i>')) return true;

  return false;
}
