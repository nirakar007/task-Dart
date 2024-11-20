import 'dart:io';

void main() {
  print("Enter first number: ");
  String? num1 = stdin.readLineSync();
  print("Enter second number: ");
  String? num2 = stdin.readLineSync();
  calculate(double.parse(num1!), double.parse(num2!));
}

double? calculate(double num1, double num2) {
  String? ans;
  do {
    print("===================MENU DRIVEN==================");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Enter a choice (1-3):");

    String? enterOption = stdin.readLineSync();

    switch (int.parse(enterOption!)) {
      case 1:
        double add = num1 + num2;
        print("1. Addition: $add");

      case 2:
        double sub = num1 - num2;
        print("2. Subtract: $sub");

      case 3:
        double mult = num1 * num2;
        print("2. Subtract: $mult");

    }
      print("Do you want to continue (Y/N)?");
      ans = stdin.readLineSync()!.toUpperCase();
  } while (ans != 'N');
  return null;
}
