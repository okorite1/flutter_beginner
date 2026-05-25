import 'dart:io';

void main() {
  inputRealNumber();
  // Welcome message
  print('CALCULATIONS MADE EASY, LET\'S GET STARTED🚀!\n');

  // Prompt the user for input
  print(
    'Please enter a maximum of ten(10) real numbers for your calculations,' +
        ' and a minimum of two(2):\n',
  ); // Read the user input and parse it to a real number (double or int)
}

List<num> inputRealNumber() {
  // Initialize a counter to keep track of the number of inputs
  int inputValues = 1;
  String cancel = 'x';
  List<num> list_realNumbers = [];
  List<String> numbers = [
    'first',
    'second',
    'third',
    'fourth',
    'fifth',
    'sixth',
    'seventh',
    'eighth',
    'ninth',
    'tenth',
  ];

  while (inputValues <= 10) {
    for (int i = numbers[0] as int; i < numbers.length; i++) {
      print('Enter the ${numbers[i]} real number or $cancel to cancel:');
      String userInput = stdin.readLineSync()!;
      if (userInput.toLowerCase() == 'x') {
        print('Input cancelled by user.');
        break;
      } else if (userInput == num.parse(userInput)) {
        list_realNumbers.add(userInput as num);
        print('Current list of real numbers: $list_realNumbers');
      } else {
        print(
          'Invalid input. Please enter a valid real number or $cancel to cancel.',
        );
        break;
      }
    }
  }
  return list_realNumbers;
}
