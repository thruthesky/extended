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
