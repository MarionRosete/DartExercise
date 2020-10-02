import 'dart:io';

List<int> list = [];
bool checkFib(List<int> list) {
  //Checks if the list is in fibonacci sequence
  for (int i = 2; i < list.length; i++) {
    //starts in 2 then gets full length of the list then incrementing the i if the condition is true
    if ((list[i - 1] + list[i - 2]) != list[i]) {
      //checks if the sum of list [i-1] and [i-2] is not equal to the list [i]
      return false; //if the if condition above is true then return false
    }
  }
  return true; //returns true if in the if statements are all false
}

void main() {
  print("enter how many numbers to check (number must be 3>N>10) : ");
  var n = int.parse(stdin.readLineSync());
  if (n <= 3 || n >= 10) {
    print("Invalid size");
  } else {
    for (int i = 1; i <= n; i++) {
      print('Enter number $i : '); //ask for a number
      list.add(int.parse(stdin.readLineSync())); //adds a number into the list
    }
    print(list); //print the list
    print(checkFib(list)); //print true or false
  }
}
