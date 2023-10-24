//  CHALLENGE 1 : Simple Calculator  build

//  ---$ SOLUTION $---
// import this library to allow us to carry out INPUT/OUTOUT functions on the console
import 'dart:io';

void main() {
  //promoting the user to specify the numbers they wish to calculate and the operation they wish to perform on the calculation.
  print('Enter the first number for calculation');
  double num1_input = double.parse(stdin.readLineSync()!);
  print('Enter the second number for calculation');
  double num2_input = double.parse(stdin.readLineSync()!);
  print(
      "Choose which operation you would like to perform on these two numbers; [+], [-], [*] or [/]");
  String? operator_input = stdin.readLineSync();
  double ans = 0;
  // based the on inputted operator, the operation will be carried out
  if (operator_input == '+') {
    ans = num1_input + num2_input;
  } else if (operator_input == '-') {
    ans = num1_input - num2_input;
  } else if (operator_input == '*') {
    ans = num1_input * num2_input;
  } else if (operator_input == '/') {
    ans = num1_input / num2_input;
  }
  print("Your answer is $ans");
}