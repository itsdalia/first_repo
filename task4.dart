void main() {
  // ===================== Task 1 — Loop basics =====================
  // Print numbers from 1 to 30. For every number divisible by 3, print "Fizz".
  for (int i = 1; i <= 30; i++) {
    if (i % 3 == 0) {
      print('Fizz');
    } else {
      print(i);
    }
  }

  // ===================== Task 2 — Looping over a List =====================
  // Print each fruit with its index, like "0: apple".
  List<String> fruits = ['apple', 'banana', 'mango', 'kiwi'];
  for (int i = 0; i < fruits.length; i++) {
    print('$i: ${fruits[i]}');
  }

  // ===================== Task 3 — Accumulating from a List =====================
  // Calculate sum and average manually (no .reduce()/.fold()).
  List<int> scores = [55, 82, 90, 43, 77];
  int sum = 0;
  for (int score in scores) {
    sum += score;
  }
  double average = sum / scores.length;
  print('Sum: $sum');
  print('Average: $average');

  // ===================== Task 4 — Looping over a Map =====================
  // Print each entry as "Name is Age years old".
  Map<String, int> ages = {'Sara': 20, 'Omar': 23, 'Laila': 19};
  ages.forEach((name, age) {
    print('$name is $age years old');
  });
  // Alternative manual way (without forEach), also valid:
  // for (var entry in ages.entries) {
  //   print('${entry.key} is ${entry.value} years old');
  // }

  // ===================== Task 5 — Finding something in a List =====================
  // Find the largest number using a loop only (no .reduce(), no sorting).
  List<int> numbers = [12, 45, 3, 89, 21, 67];
  int largest = numbers[0];
  for (int n in numbers) {
    if (n > largest) {
      largest = n;
    }
  }
  print('Largest number: $largest');

  // ===================== Task 6 — List + Map together =====================
  // Print each product's name and price, then the total price of all products.
  List<Map<String, dynamic>> products = [
    {'name': 'Book', 'price': 40},
    {'name': 'Pen', 'price': 5},
    {'name': 'Bag', 'price': 120},
  ];
  int totalPrice = 0;
  for (var product in products) {
    print('${product['name']}: ${product['price']}');
    totalPrice += product['price'] as int;
  }
  print('Total price: $totalPrice');

  // ===================== Bonus — total cost & most expensive item =====================
  // Each product has price and qty. Calculate total cost (price*qty summed),
  // and find the item with the highest total cost.
  List<Map<String, dynamic>> productsWithQty = [
    {'name': 'Book', 'price': 40, 'qty': 2},
    {'name': 'Pen', 'price': 5, 'qty': 10},
    {'name': 'Bag', 'price': 120, 'qty': 1},
  ];

  int totalCost = 0;
  String topItemName = '';
  int topItemCost = -1;

  for (var product in productsWithQty) {
    int itemCost = (product['price'] as int) * (product['qty'] as int);
    totalCost += itemCost;

    if (itemCost > topItemCost) {
      topItemCost = itemCost;
      topItemName = product['name'];
    }
  }

  print('Total cost: $totalCost');
  print('Most expensive item overall: $topItemName ($topItemCost)');
}
