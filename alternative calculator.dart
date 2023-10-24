// simple calculator implemented using the function approuch

import 'dart:io';

void main() {
  print('Enter the first number for calculation');
  double num1_input = double.parse(stdin.readLineSync()!);
  print('Enter the second number for calculation');
  double num2_input = double.parse(stdin.readLineSync()!);
  print(
      "Choose which operation you would like to perform on these two numbers; [+], [-], [*] or [/]");
  String? operator_input = stdin.readLineSync();
  double output = 0;
  if (operator_input == '+') {
    output = addition(num1_input, num2_input);
  } else if (operator_input == '-') {
    output = subtraction(num1_input, num2_input);
    ;
  } else if (operator_input == '*') {
    output = multiplication(num1_input, num2_input);
    ;
  } else if (operator_input == '/') {
    output = division(num1_input, num2_input);
    ;
  }
  print("Your anwser is $output");
}

double addition(double num_1, double num_2) {
  double anwser = num_1 + num_2;
  return anwser;
}

double subtraction(double num_1, double num_2) {
  double anwser = num_1 - num_2;
  return anwser;
}

double multiplication(double num_1, double num_2) {
  double anwser = num_1 * num_2;
  return anwser;
}

double division(double num_1, double num_2) {
  double anwser = num_1 / num_2;
  return anwser;
}