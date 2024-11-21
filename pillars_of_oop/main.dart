import 'dart:io';

import 'abstraction.dart';
import 'encapsulation.dart';
import 'inheritance.dart';
import 'polymorphism.dart';

void main() {
  String accNum = "1234";
  double balance = 500.00;
  var myAccount = Account(accNum, balance);
  print("Enter your account number: ");
  String inputAccNum = stdin.readLineSync()!;
  if (inputAccNum == accNum) {
    // encapsulation
    print("Do you want to deposit or withdraw?");
    String deposit = "deposit";
    String withdraw = "withdraw";
    String choice = stdin.readLineSync()!;
    if (choice == deposit) {
      print("Enter deposit amount: ");
      double amount = double.parse(stdin.readLineSync()!);
      myAccount.deposit(amount);
    } else if (choice == withdraw) {
      print("Enter withdraw amount: ");
      double withdraw = double.parse(stdin.readLineSync()!);
      myAccount.deposit(withdraw);
    }

    // inheritance
    var mySavings = SavingsAccount(accNum, balance, 10.0);
    mySavings.addInterest();

    // polymorphism
    Animal myP = Platypus();
    Animal myBD = BarkingDeer();

    myP.sound();
    myBD.sound();

    // abstration
    Shape egg = Circle(10.0);
    Shape omelette = Rectangle(10.0, 10.5);
    egg.make();
    omelette.make();
  } else {
    print("Invalid !");
  }
}
