import 'dart:io';

void main() {
  int num = getInput('Enter positive integer: ').toInt();
  if (num > 0) {
    int result = calculateFactorial(num);
    print(result);
    print('Factorial of $num = $result');
  } else if (num == 0) {
    print("Factorial of $num = 1");
  } else {
    print('ERroR! Integer please');
  }
}

double getInput(String input) {
  print(input);
  return double.parse(stdin.readLineSync()!);
}

int calculateFactorial(int num) {
  int factorial = 1;
  for (int i = 1; i <= num; i++) {
    factorial *= i;
  }
  return factorial;
}
