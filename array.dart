import 'dart:io';

void main() {
  var array = [];
  for (int i = 0; i < 10; i++) {
    print("Enter number ${i + 1}: ");
    var input = stdin.readLineSync();
    array.add(input);
  }
  printArray(array);
  calculateEven(array);
}

void printArray(var array) {
  print('-------------------- Array values: -------------------');
  for (var element in array) {
    print(element);
  }
}

void calculateEven(var array) {
  print("-------------------- Even numbers: -------------------");
  var count = 0;
  for (var i in array) {
    if (i % 2 == 0) {
      count++;
    }
  }
  print("Even numbers are: $count");
}
