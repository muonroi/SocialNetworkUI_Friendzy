String convertToK(int number) {
  if (number < 1000) {
    return number.toString();
  } else if (number < 10000) {
    final double value = number / 1000;
    return '${value.toStringAsFixed(1)}k';
  } else {
    final double value = number / 1000;
    return '${value.round()}k';
  }
}
