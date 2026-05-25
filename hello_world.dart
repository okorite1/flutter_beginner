import 'dart:io';
import 'dart:math';

void main() {
  print('BASIC CALCULATIONS MADE EASY, LET\'S GET STARTED🚀!');
  calculate(inputRealNumber(), operators(), inputRealNumber2());
}

num inputRealNumber() {
  try {
    print('Please enter a real number:');
    num choice1 = num.parse(stdin.readLineSync()!);
    return choice1;
  } catch (e) {
    print('An error occurred: $e');
    return inputRealNumber();
  }
}

String operators() {
  print('Please enter an operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;
  if (operator != '+' &&
      operator != '-' &&
      operator != '*' &&
      operator != '/') {
    print('Invalid operator. Please enter one of the following: +, -, *, /.');
    return operators();
  }
  return operator;
}

num inputRealNumber2() {
  try {
    print('Please enter another real number:');
    num choice2 = num.parse(stdin.readLineSync()!);
    return choice2;
  } catch (e) {
    print('An error occurred: $e');
    return inputRealNumber2();
  }
}

calculate(num choice1, String operator, num choice2) {
  while (choice1 != e && choice2 != e && operator != e)
    ; // Set a counter for the number of attempts for error handling
  try {
    num result;
    switch (operator) {
      case '+':
        result = choice1 + choice2;
        print('Result: $result');
        break;
      case '-':
        result = choice1 - choice2;
        print('Result: $result');
        break;
      case '*':
        result = choice1 * choice2;
        print('Result: $result');
        break;
      case '/':
        if (choice2 != 0) {
          result = choice1 / choice2;
          print('Result: $result');
        } else {
          print('Error: Division by zero is not allowed.');
        }
        break;
    }
  } catch (e) {
    print('An error occurred: $e');
    return;
  }
  // Decrement the counter after each attempt
}
