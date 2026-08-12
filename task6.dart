// ================= Task 1: Person =================
class Person {
  String name;
  int age;
  String city;

  Person(this.name, this.age, this.city);

  void printInfo() {
    print('Name: $name, Age: $age, City: $city');
  }
}

// ================= Task 2: Rectangle =================
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double area() => width * height;

  double perimeter() => 2 * (width + height);
}

// ================= Task 3: BankAccount =================
class BankAccount {
  String owner;
  double balance;

  BankAccount(this.owner, this.balance);

  BankAccount.empty(this.owner) : balance = 0;

  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. New balance: $balance');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('Insufficient funds. Current balance: $balance');
      return;
    }
    balance -= amount;
    print('Withdrew $amount. New balance: $balance');
  }
}

// ================= Task 4: Student =================
class Student {
  String name;
  List<double> grades;

  Student(this.name, this.grades);

  double average() {
    if (grades.isEmpty) return 0;
    return grades.reduce((a, b) => a + b) / grades.length;
  }

  String status() => average() >= 60 ? 'Pass' : 'Fail';
}

// ================= Task 5: Product =================
class Product {
  String name;
  double price;
  bool inStock;

  Product(this.name, this.price, {this.inStock = true});

  Product.outOfStock(this.name, this.price) : inStock = false;

  @override
  String toString() {
    return 'Product(name: $name, price: \$${price.toStringAsFixed(2)}, inStock: $inStock)';
  }
}

// ================= main =================
void main() {
  // Task 1
  print('--- Task 1: Person ---');
  Person p1 = Person('Alice', 25, 'Cairo');
  Person p2 = Person('Omar', 30, 'Dubai');
  p1.printInfo();
  p2.printInfo();

  // Task 2
  print('\n--- Task 2: Rectangle ---');
  Rectangle rect = Rectangle(5.0, 3.0);
  print('Area: ${rect.area()}');
  print('Perimeter: ${rect.perimeter()}');

  // Task 3
  print('\n--- Task 3: BankAccount ---');
  BankAccount account = BankAccount.empty('Sara');
  print('Initial balance: ${account.balance}');
  account.deposit(100);
  account.withdraw(40);
  account.withdraw(1000); // insufficient funds test

  // Task 4
  print('\n--- Task 4: Student ---');
  Student student = Student('Youssef', [70, 55, 80, 60]);
  print('Average: ${student.average()}');
  print('Status: ${student.status()}');

  // Task 5
  print('\n--- Task 5: Product ---');
  Product prod1 = Product('Laptop', 1200.0);
  Product prod2 = Product('Phone', 800.0, inStock: false);
  Product prod3 = Product.outOfStock('Tablet', 500.0);

  print(prod1);
  print(prod2);
  print(prod3);
}
