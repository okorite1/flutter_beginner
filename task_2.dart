class MenuItem {
  void displayItem() {
    print('''
This is a menu item.
    It has a name, price, and category.
    The name is a string, the price is a double, and the category is a string.
    ''');
  }
}
//   // 1. Create a class named MenuItem with two properties;
//   //name (String) and price (double).
//   String name;
//   double price;
//   String category;

//   MenuItem({required this.name, required this.price, required this.category});

//   void displayItem() {
//     // 2. Create a method named displayItem that prints the name and price of the menu item in the following format: "Name: [name], Price: [price]".
//     print(
//       'Name: $name, Price: \$${price.toStringAsFixed(2)}, Category: $category',
//     );
//   }
// }

// Class Food extends MenuItem {
//   String portionSize_small ='small';
//   String portionSize_medium = 'medium';
//   String portionSize_large = 'large';

//   @override
//   void displayItem() {
//     super.displayItem();
//     print('Portion Sizes: $portionSize_small, $portionSize_medium, $portionSize_large');
//   }
// }

//  class Orders {
//   String customerName;
//   List<MenuItem> items;
//   int  totalPrice;

//   String get add_item(MenuItem item) {
//     items.add(item);
//     totalPrice += item.price.toInt();
//     return 'Item added: ${item.name}, Total Price: \$${totalPrice.toStringAsFixed(2)}';
//   }

//   string get remove_item(MenuItem item) {
//     if (items.contains(item)) {
//       items.remove(item);
//       totalPrice -= item.price.toInt();
//       return 'Item removed: ${item.name}, Total Price: \$${totalPrice.toStringAsFixed(2)}';
//     } else {
//       return 'Item not found in the order.';
//     }
//   }
//   string print_bill() {
//     String bill = 'Customer Name: $customerName\n';
//     bill += 'Items Ordered:\n';
//     for (var item in items) {
//       bill += '- ${item.name}: \$${item.price.toStringAsFixed(2)}\n';
//     }
//     bill += 'Total Price: \$${totalPrice.toStringAsFixed(2)}';
//     return bill;
//   }
//  }

void main() {
  print('Welcome to Gee\'s Restaurant Menu Management System!\n');

  print('Here are some menu items:');
  print('''
    This is a menu item.
    It has a name, price, and category.
    The name is a string, the price is a double, and the category is a string.
    ''');
}
