import 'dart:io';

void main() {
  // This variable will control the main loop of the calculator
  bool running = true;

  // Welcome message for the user
  print('BASIC CALCULATIONS MADE EASY 🚀');

  // Main loop to keep the calculator running until the user decides to exit
  while (running) {
    num choice1 = inputRealNumber();
    String operator = operators();
    num choice2 = inputRealNumber2();

    // Perform the calculation and display the result
    calculate(choice1, operator, choice2);

    // Ask the user if they want to continue using the calculator
    print('\nDo you want to continue? (yes/no)');
    String answer = stdin.readLineSync()!.toLowerCase();
    if (answer == 'no') {
      running = false;
      print('Calculator closed.');
    } else if (answer != 'yes') {
      print('Invalid input. Exiting the calculator.');
      running = false;
    }
  }
}

// Function to input a real number from the user with error handling
num inputRealNumber() {
  while (true) {
    try {
      print('Please enter a real number:');

      num choice1 = num.parse(stdin.readLineSync()!);
      return choice1;
    } catch (e) {
      print('Invalid input. Please enter a valid real number.');
    }
  }
}

// Function to input an operator from the user with validation
String operators() {
  while (true) {
    print('Please enter an operator (+, -, *, /):');

    String operator = stdin.readLineSync()!;

    if (operator == '+' ||
        operator == '-' ||
        operator == '*' ||
        operator == '/') {
      return operator;
    }
    print('Invalid operator. Try again.');
  }
}

// Function to input another real number from the user with error handling
num inputRealNumber2() {
  while (true) {
    print('Please enter another real number:');

    try {
      num choice2 = num.parse(stdin.readLineSync()!);
      return choice2;
    } catch (e) {
      print('Invalid input. Please enter a valid real number.');
    }
    print('Invalid number. Try again.');
  }
}

// Function to perform the calculation and display the result
void calculate(num choice1, String operator, num choice2) {
  num result;
  bool running = true;

  while (running) {
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
        result = choice1 / choice2;
        if (choice2 == 0) {
          print('Error: Division by zero is not allowed.');
          running = false;
        } else {
          print('Result: $result');
        }
    }
    break;
  }
}
