import 'dart:io';

void main() {
  double temperature = getInput('Enter temperature value: ');
  String? inputUnit = getUnit('Enter unit of input value (C, F or K): ');
  String? outputUnit = getUnit('Convert to (C, F or K): ');

  double? convertedTemperature =
      convertTemperature(temperature, inputUnit!, outputUnit!);

  if (convertedTemperature != null) {
    print('Temperature in $outputUnit: $convertedTemperature');
  } else {
    print('Error! Invalid Conversion.');
  }
}

double getInput(String prompt) {
  while (true) {
    print(prompt);
    String? userInput = stdin.readLineSync(); // Renamed to avoid conflict
    if (userInput != null) {
      try {
        return double.parse(userInput);
      } catch (e) {
        print("Invalid input. Enter a VALID number: ");
      }
    } else {
      print("Invalid Input!");
    }
  }
}

String? getUnit(String prompt) {
  print(prompt);
  while (true) {
    String? unitInput =
        stdin.readLineSync()?.toUpperCase(); // Renamed to avoid conflict
    if (unitInput == "C" || unitInput == "F" || unitInput == "K") {
      return unitInput;
    } else {
      print("Invalid Unit. Choose from C, F, or K.");
    }
  }
}

double? convertTemperature(double temp, String inputUnit, String outputUnit) {
  double tempC;

  //input temperature -> celsius
  switch (inputUnit) {
    case 'C':
      tempC = temp;
      break;
    case 'F':
      tempC = (temp - 32) * 5 / 9;
      break;
    case 'K':
      tempC = temp - 273.15;
      break;
    default:
      return null;
  }

  // celsius -> output unit
  switch (outputUnit) {
    case 'C':
      return tempC;
    case 'F':
      return (tempC * 9 / 5) + 32;
    case 'K':
      return tempC + 273.15;
    default:
      return null;
  }
}
