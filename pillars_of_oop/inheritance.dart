import 'encapsulation.dart';

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(String accountNumber, double balance, this.interestRate)
      : super(accountNumber,
            balance); //  used to initialize a superclass's constructor or to initialize instance variables before the body of the subclass's constructor is executed. This syntax is known as the initializer list.

  void addInterest() {
    double interest = balance * (interestRate / 100);
    deposit(interest);
    print(
        "Interest of Rs${interest.toStringAsFixed(2)} added at rate $interestRate%.");
  }
}
