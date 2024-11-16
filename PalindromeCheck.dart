import 'dart:io';

void main() {
  String input = getInput('Enter String: ');
  checkPalindrome(input);
}

String getInput(String input) {
  print(input);
  return stdin.readLineSync()!;
}

void checkPalindrome(String str) {
  String normal = str
      .toLowerCase()
      .replaceAll(RegExp(r'\s+'), ''); // \s+ matches any space, tab, or newline
  String reversed = normal.split('').reversed.join('');
  if (normal == reversed) {
    print('$str is a palindrome.');
  } else {
    print('$str is not a palindrome.');
  }
}
