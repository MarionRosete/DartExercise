import 'dart:io';

var gas = {
  "0.Leaded ": 45.75,
  "1.Unleaded": 43.18,
  "2.Diesel": 37.12,
  "3.Bio-Diesel": 48.03
};
var price = gas.values.toList();
var type = gas.keys.toList();
void main() {
  print("****** Peter Gas Station ******");
  print("-Available Gas-");
  gas.forEach((key, value) => print("${key}:${value}"));
  print("Select fuel type:");
  int choice = int.parse(stdin.readLineSync());
  print(type[choice]);
  print(" type of purchase:(1.by liters, 2.by cash)");
  int choice2 = int.parse(stdin.readLineSync());
  if (choice2 == 1) {
    //by liters
    print("Input liters:");
    int liters = int.parse(stdin.readLineSync());
    double total = price[choice] * liters;
    print("Total Amount Payable:$total");
    print("Input your money:");
    double money = double.parse(stdin.readLineSync());
    double change = money - total;
    print("Your Change: $change");
  } else {
    //by cash
    print("Input cash:");
    int cash = int.parse(stdin.readLineSync());
    double total2 = cash / price[choice];
    print("total liters acquired:$total2");
    print("Input your money:");
    double money = double.parse(stdin.readLineSync());
    double change = money - cash;
    print("Your Change: $change");
  }
}
