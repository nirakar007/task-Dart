import 'dart:io';

// always search by key. key should be unique. always
void main() {
  Map cityCountry = <String, String>{};
  cityCountry['Kathmandu'] = 'Nepal';
  cityCountry['Autobahn'] = 'Germany';

  cityCountry.forEach((city, country) {
    print('$city is in $country');
  });

  print("Enter country name: ");
  String? searchValue = stdin.readLineSync();
  cityCountry.forEach((city, country) {
    if (searchValue == city) {
      print('$searchValue is in $country'); // if multiple values, use {}
    } else {
      print('city not found.');
    }
  });
}
