import 'dart:io';

import 'FactorialCalculator.dart';
import 'TemperatureConverter.dart';

void main() {
  double p = getInput('Enter principal: ');
  double r = getInput('Enter rate of interest as percentage: ');
  double t = getInput('Enter time in years: ');

  double interest = calculateSimpleInterest(p, t, r);
  print('Simple Interest = $interest');
}

double calculateSimpleInterest(double p, double t, double r) {
  return (p * t * r) / 100;
}

double getInput(String num) {
  print(num);
  return double.parse(stdin.readLineSync()!);
}
