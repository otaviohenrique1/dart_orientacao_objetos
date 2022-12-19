import 'dart:math';

dynamic teoremapitagoras(
    {double catetoa = 0, double catetob = 0, double hipotenusa = 0}) {
  if (hipotenusa == 0) {
    return sqrt(pow(catetoa, 2) + pow(catetob, 2));
  } else if (catetoa == 0) {
    return sqrt(pow(hipotenusa, 2) - pow(catetob, 2));
  } else if (catetob == 0) {
    return sqrt(pow(hipotenusa, 2) - pow(catetoa, 2));
  } else {
    return 0;
  }
}
