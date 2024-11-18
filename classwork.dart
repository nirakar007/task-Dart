import 'dart:io';

void main() {
  // 1. odd Even
  String input = getUserInput("Enter a number: ");
  print(checkOddEven(int.parse(input)));

  // 2. Vowel checker
  String input2 = getUserInput("Enter a character: ").toLowerCase();
  print(checkVowel(input2));

  // 3. Positive ngative zero
  String input3 = getUserInput("Enter number: ");
  print(poNeZe(int.parse(input3)));

  // 4. Print name 100 times
  String input4 = getUserInput("Enter name: ");
  print(print100(input4));

  // 5. sum natural numbers
  String input5 = getUserInput("Enter number: ");
  print(sumNaturalNums(int.parse(input5)));

  // 6. multiplication table of 5
  print(multiplicationFive());

  // 7. multiplication table from 1-9
  print(multiplicationTables());

  // 8. basic calculator
  String calc1 = getUserInput("Enter number 1: ");
  String calc2 = getUserInput("Enter number 2: ");
  String operator = getOperator('');
  print(calculator(double.parse(calc1), double.parse(calc2), operator));

  // 9. print 1 to 100 but not 41
  print(noFourOne());
}

// to get userinput universal
String getUserInput(String input) {
  print(input);
  String? userInput = stdin.readLineSync();
  return userInput ?? '';
}

// 1. Write a dart program to check if the number is odd or even.
String checkOddEven(int number) {
  String result = '';
  if (number % 2 == 0) {
    result = "$number is Even";
  } else {
    result = "$number is Odd";
  }
  return result;
}

// 2. Write a dart program to check whether a character is a vowel or consonant.
String? checkVowel(String letter) {
  if ('aeiou'.contains(letter)) {
    print("Vowel");
  } else if (RegExp(r'^[a-z]$').hasMatch(letter)) {
    print('Consonant');
  } else {
    print("IT HAS TO BE AN ALPHABET!");
  }
}

// 3. Write a dart program to check whether a number is positive, negative, or zero.
String? poNeZe(int number) {
  if (number > 0) {
    print("Positive.");
  } else if (number < 0) {
    print("Negative.");
  } else if (number == 0) {
    print("0");
  }
}

// 4. Write a dart program to print your name 100 times.
String? print100(String name) {
  for (int i = 1; i <= 100; i++) {
    print("$i $name");
  }
}

// 5. Write a dart program to calculate the sum of natural numbers.
int? sumNaturalNums(int number) {
  if (number <= 0) {
    return 0;
  }
  return number * (number + 1) ~/ 2; // ~/ used for integer division
}

// 6. Write a dart program to generate multiplication tables of 5.
int? multiplicationFive([int number = 5]) {
  int result;
  for (int i = 1; i <= 10; i++) {
    result = number * i;
    print("$number * $i = $result");
  }
}

// 7. Write a dart program to generate multiplication tables of 1-9.
int? multiplicationTables() {
  int result;
  for (int multiplier = 1; multiplier <= 10; multiplier++) {
    for (int multipliedBy = 1; multipliedBy < 10; multipliedBy++) {
      print(multiplier);
      result = multiplier * multipliedBy;
      print("$multiplier * $multipliedBy = $result");
    }
  }
}

// 8. Write a dart program to create a simple calculator that performs addition, subtraction, multiplication, and division.
// input operation sign
String getOperator(String op) {
  print('(+ , - , * , / ):');
  return stdin.readLineSync()!;
}

// calculator
double? calculator(double num1, double num2, String operator) {
  print("Enter oprerator (+ , - , * , / ): ");
  operator = stdin.readLineSync()!;
  switch (operator) {
    case '+':
      return num1 + num2;

    case '-':
      return num1 - num2;

    case '*':
      return num1 * num2;

    case '/':
      return num2 != 0 ? num1 / num2 : null;

    default:
      print('Invalid xx');
      return null;
  }
}

// 9. Write a dart program to print 1 to 100 but not 41.
int? noFourOne() {
  for (int i = 1; i <= 100; i++) {
    if (i == 41) {
      continue;
    } else {
      print(i);
    }
  }
}
