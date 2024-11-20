void main() {
  print(multiply(1, 2, 3, 4, 5));
}

// the parameters within the [] are optional parameters
int multiply(int num1, int num2, [int num3 = 1, int num4 = 1, int num5 = 1]) =>
    num1 * num2 * num3 * num4 * num5;
