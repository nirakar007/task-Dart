class Account {
  String _accountNumber; // "_" makes it private to the libraby
  double _balance;

  Account(this._accountNumber, this._balance);

// get    without arrow
//   double get balance {
//   print("Returning balance...");
//   return _balance;
// }
  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print(
          "Withdrew Rs${amount.toStringAsFixed(2)}. New balance: Rs${_balance.toStringAsFixed(2)}");
    } else {
      print("ERROR! Insufficient balance / Invalid amount");
    }
  }
}
