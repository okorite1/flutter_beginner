import 'dart:io';

class FullMenuwithPrice {
  Map<String, List<Map<String, dynamic>>> _menu = {
    // Each category contains a list of items,
    //where each item is represented as a map with 'name', 'size',
    // and 'price' keys.
    'Soup': [
      {'name': 'Egusi Soup', 'size': '100g', 'price': 1300},
      {'name': 'Okra Soup', 'size': '100g', 'price': 1200},
      {'name': 'Bitterleaf Soup', 'size': '100g', 'price': 1300},
      {'name': 'Vegetable Soup', 'size': '100g', 'price': 1400},
    ],
    'Swallow': [
      {'name': 'Garri', 'size': '150g', 'price': 150},
      {'name': 'Fufu', 'size': '150g', 'price': 200},
      {'name': 'Amala', 'size': '150g', 'price': 250},
      {'name': 'Semovita', 'size': '150g', 'price': 180},
    ],
    'Rice': [
      {'name': 'white Rice', 'size': '100g', 'price': 400},
      {'name': 'Jollof Rice', 'size': '100g', 'price': 500},
      {'name': 'Fried Rice', 'size': '100g', 'price': 550},
      {'name': 'Coconut Rice', 'size': '100g', 'price': 650},
    ],
    'Sause': [
      {'name': 'Stew Sause', 'size': '100g', 'price': 300},
      {'name': 'Gravy Sause', 'size': '100g', 'price': 350},
      {'name': 'vegetable only', 'size': '100g', 'price': 250},
    ],
    'Protein': [
      {'name': 'chicken', 'size': '100g', 'price': 500},
      {'name': 'beef', 'size': '100g', 'price': 700},
      {'name': 'fish', 'size': '100g', 'price': 600},
      {'name': 'goat meat', 'size': '100g', 'price': 800},
    ],
    'Drinks': [
      {'name': 'Coke', 'size': '500ml', 'price': 150},
      {'name': 'Pepsi', 'size': '500ml', 'price': 150},
      {'name': 'Fanta', 'size': '500ml', 'price': 150},
      {'name': 'Sprite', 'size': '500ml', 'price': 150},
    ],
  };

  get keys => _menu.keys;

  final List<Map<String, dynamic>> orderedItems = [];

  void displayMenu() {
    // Display the menu to the user
    FullMenuwithPrice menu = FullMenuwithPrice();
    print('Welcome to Gee\'s Restaurant Menu Management System!');
    print('\n=== OFFICIAL RESTAURANT MENU ===\n');
    menu._menu.forEach((category, items) {
      print('\n$category:');
      for (var item in items) {
        print(
          ' • ${item['name']} (${item['size']}): \$${item['price'].toStringAsFixed(2)}',
        );
      }
    });
  }

  void placeOrder() {
    // Display the menu categories to the user
    print(
      '\nPlease choose a category from the list below, select either 1, 2, 3, 4, 5 or 6:',
    );
    for (int i = 0; i < keys.length; i++) {
      print('${i + 1}. ${keys.elementAt(i)}');
    }

    bool startSelection = true;
    // Start the ordering process
    while (startSelection) {
      print('Enter the number corresponding to your desired category:');
      String category = stdin.readLineSync()!;
      if (category == '1') {
        print('''
      You have selected ${keys.elementAt(0)}, 
      Please choose the type of the soup you want to order by entering;
       'a' for Egusi Soup, 'b' for Okra Soup, 'c' for Bitterleaf Soup, 
       and 'd' for Vegetable Soup
      ''');
        String soupType = stdin.readLineSync()!.toLowerCase();
        if (soupType == 'a') {
          // Handle Egusi Soup selection
          orderedItems.add(_menu['Soup']![0]);
        } else if (soupType == 'b') {
          // Handle Okra Soup selection
          orderedItems.add(_menu['Soup']![1]);
        } else if (soupType == 'c') {
          // Handle Bitterleaf Soup selection
          orderedItems.add(_menu['Soup']![2]);
        } else if (soupType == 'd') {
          // Handle Vegetable Soup selection
          orderedItems.add(_menu['Soup']![3]);
        } else {
          print('Invalid soup selection. Please choose a valid soup type.');
        }
      } else if (category == '2') {
        print('''
      You have selected ${keys.elementAt(1)}. 
      Please choose the type of the swallow you want to order by entering;
       'a' for Garri, 'b' for Fufu, 'c' for Amala and 'd' for Semovita
      ''');
        String swallowType = stdin.readLineSync()!.toLowerCase();
        if (swallowType == 'a') {
          // Handle Garri selection
          orderedItems.add(_menu['Swallow']![0]);
        } else if (swallowType == 'b') {
          // Handle Fufu selection
          orderedItems.add(_menu['Swallow']![1]);
        } else if (swallowType == 'c') {
          // Handle Amala selection
          orderedItems.add(_menu['Swallow']![2]);
        } else if (swallowType == 'd') {
          // Handle Semovita selection
          orderedItems.add(_menu['Swallow']![3]);
        } else {
          print(
            'Invalid swallow selection. Please choose a valid swallow type.',
          );
        }
      } else if (category == '3') {
        print('''
      You have selected ${keys.elementAt(2)}.
      Please choose the type of the rice you want to order by entering;
       'a' for White Rice, 'b' for Jollof Rice, 'c' for Fried Rice, 
       and 'd' for Coconut Rice
      ''');
        String riceType = stdin.readLineSync()!.toLowerCase();
        if (riceType == 'a') {
          // Handle White Rice selection
          orderedItems.add(_menu['Rice']![0]);
        } else if (riceType == 'b') {
          // Handle Jollof Rice selection
          orderedItems.add(_menu['Rice']![1]);
        } else if (riceType == 'c') {
          // Handle Fried Rice selection
          orderedItems.add(_menu['Rice']![2]);
        } else if (riceType == 'd') {
          // Handle Coconut Rice selection
          orderedItems.add(_menu['Rice']![3]);
        } else {
          print('Invalid rice selection. Please choose a valid rice type.');
        }
      } else if (category == '4') {
        print('''
      You have selected ${keys.elementAt(3)}. 
      Please choose the type of the sause you want to order by entering;
       'a' for Stew Sause, 'b' for Gravy Sause and 'c' for Vegetable Only
      ''');
        String sauseType = stdin.readLineSync()!.toLowerCase();
        if (sauseType == 'a') {
          // Handle Stew Sause selection
          orderedItems.add(_menu['Sause']![0]);
        } else if (sauseType == 'b') {
          // Handle Gravy Sause selection
          orderedItems.add(_menu['Sause']![1]);
        } else if (sauseType == 'c') {
          // Handle Vegetable Only selection
          orderedItems.add(_menu['Sause']![2]);
        } else {
          print('Invalid sause selection. Please choose a valid sause type.');
        }
      } else if (category == '5') {
        print('''
      You have selected ${keys.elementAt(4)}. 
      Please choose the type of the protein you want to order by entering;
       'a' for Chicken, 'b' for Beef, 'c' for Fish and 'd' for Goat Meat
      ''');
        String proteinType = stdin.readLineSync()!.toLowerCase();
        if (proteinType == 'a') {
          // Handle Chicken selection
          orderedItems.add(_menu['Protein']![0]);
        } else if (proteinType == 'b') {
          // Handle Beef selection
          orderedItems.add(_menu['Protein']![1]);
        } else if (proteinType == 'c') {
          // Handle Fish selection
          orderedItems.add(_menu['Protein']![2]);
        } else if (proteinType == 'd') {
          // Handle Goat Meat selection
          orderedItems.add(_menu['Protein']![3]);
        } else {
          print(
            'Invalid protein selection. Please choose a valid protein type.',
          );
        }
      } else if (category == '6') {
        print('''
      You have selected ${keys.elementAt(5)}. 
      Please choose the type of the drink you want to order by entering;
       'a' for Coke, 'b' for Pepsi, 'c' for Fanta and 'd' for Sprite
      ''');
        String drinkType = stdin.readLineSync()!.toLowerCase();
        if (drinkType == 'a') {
          // Handle Coke selection
          orderedItems.add(_menu['Drinks']![0]);
        } else if (drinkType == 'b') {
          // Handle Pepsi selection
          orderedItems.add(_menu['Drinks']![1]);
        } else if (drinkType == 'c') {
          // Handle Fanta selection
          orderedItems.add(_menu['Drinks']![2]);
        } else if (drinkType == 'd') {
          // Handle Sprite selection
          orderedItems.add(_menu['Drinks']![3]);
        } else {
          print('Invalid drink selection. Please choose a valid drink type.');
        }
      } else {
        print('Invalid category selection. Please choose a valid category.');
      }
      print(
        'Do you want to order another item? choose \'yes\' or \'no\'  or remove current item choose \'remove\'',
      );
      String continueOrdering = stdin.readLineSync()!.toLowerCase();
      if (continueOrdering == 'no') {
        startSelection = false;
        print(
          'Your order has been placed. Thank you for choosing Gee\'s Restaurant!',
        );
        print(orderedItems);
      } else if (continueOrdering == 'yes') {
        continue;
      } else if (continueOrdering == 'remove') {
        print(
          'Which item would you like to remove?, please enter the item number:',
        );
        for (int i = 0; i < orderedItems.length; i++) {
          print(
            '${i + 1}. ${orderedItems[i]['name']} (${orderedItems[i]['size']}): \$${orderedItems[i]['price'].toStringAsFixed(2)}',
          );
        }
        String itemToRemove = stdin.readLineSync()!.toLowerCase();
        int itemIndex = int.tryParse(itemToRemove) ?? -1;
        if (itemIndex >= 1 && itemIndex <= orderedItems.length) {
          orderedItems.removeAt(itemIndex - 1);
          print('Item removed successfully.');
        } else {
          print('Invalid item selection.');
        }
      } else {
        print('Invalid input. Exiting the ordering process.');
        startSelection = false;
      }
    }
  }
}

class PrintBill extends FullMenuwithPrice {
  void printBill() {
    print('\nBILL SUMMARY\n');

    double total = 0.0;

    for (var item in orderedItems) {
      print(
        '${item['name']} (${item['size']}): \$${item['price'].toStringAsFixed(2)}',
      );

      total += item['price'];
    }

    print('\nTotal Amount: \$${total.toStringAsFixed(2)}');

    // CLEAR ORDER AFTER PRINTING
    orderedItems.clear();
  }
}

void main() {
  PrintBill menu = PrintBill();
  menu.displayMenu();
  menu.placeOrder();
  menu.printBill();
}
