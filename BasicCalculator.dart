import 'dart:io';

void main() {
  double num1 = getInput("enter number 1: ");
  double num2 = getInput("enter number 2: ");
  String operator = getOperator("");

  double? result = calculate(num1, num2, operator);

  if (result != null) {
    print('Result: $result');
  } else {
    print('Error!, INVALID.');
  }
}

// get input numbers
double getInput(String input){
  print(input);
  return double.parse(stdin.readLineSync()!);
}

// input operation sign
String getOperator(String op) {
    print('(+ , - , * , / ):');
    return stdin.readLineSync()!;
  }

// calculate
double? calculate(double num1, double num2, String operator) {
    switch (operator) {
      case '+':
        return  num1 + num2;

      case '-':
        return  num1 - num2;

      case '*':
        return  num1 * num2;

      case '/':
        return  num2 != 0 ? num1 / num2 : null;

      default:
        print('Invalid xx');
        return null;
    }
  }
