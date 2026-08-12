// ================= Task 1: Car =================
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
  }
}

// ================= Task 2: Student =================
class Student {
  String name;
  int age;
  int grade;

  Student(this.name, this.age, this.grade);

  Student.guest() : name = 'Guest', age = 0, grade = 0;

  void showInfo() {
    print('Name: $name, Age: $age, Grade: $grade');
  }
}

// ================= Task 3: BankAccount =================
class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double value) {
    if (value < 0) {
      print('Invalid balance');
      return;
    }
    _balance = value;
  }
}

// ================= Task 4: Animal / Dog / Cat =================
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('$name makes a sound');
  }
}

class Dog extends Animal {
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print('Dog: Woof!');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print('Cat: Meow!');
  }
}

// ================= Task 5: Person / Employee =================
class Person {
  String name;
  int age;

  Person(this.name, this.age);
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary) : super(name, age);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Salary: $salary');
  }
}

// ================= Task 6: Book / BorrowedBook =================
class Book {
  String title;
  String author;

  Book(this.title, this.author);

  void displayBookInfo() {
    print('Book: $title');
    print('Author: $author');
  }
}

class BorrowedBook extends Book {
  bool _isBorrowed = false;

  BorrowedBook(String title, String author) : super(title, author);

  void borrowBook() {
    if (_isBorrowed) {
      print('This book is already borrowed.');
      return;
    }
    _isBorrowed = true;
    print('Borrowed successfully.');
  }

  void returnBook() {
    if (!_isBorrowed) {
      print('This book was not borrowed.');
      return;
    }
    _isBorrowed = false;
    print('Book returned successfully.');
  }

  String getStatus() => _isBorrowed ? 'Borrowed' : 'Available';
}

// ================= main =================
void main() {
  // Task 1
  print('--- Task 1: Car ---');
  Car car = Car('Toyota', 'Corolla', 2022);
  car.displayInfo();

  // Task 2
  print('\n--- Task 2: Student ---');
  Student s1 = Student('Anas', 22, 95);
  Student s2 = Student.guest();
  s1.showInfo();
  s2.showInfo();

  // Task 3
  print('\n--- Task 3: BankAccount ---');
  BankAccount account = BankAccount();
  account.balance = 1000;
  print('Balance: ${account.balance}');
  account.balance = -500;
  print('Balance: ${account.balance}');

  // Task 4
  print('\n--- Task 4: Animal / Dog / Cat ---');
  Dog dog = Dog('Rex');
  Cat cat = Cat('Whiskers');
  dog.makeSound();
  cat.makeSound();

  // Task 5
  print('\n--- Task 5: Person / Employee ---');
  Employee emp = Employee('Mona', 28, 5000);
  emp.displayInfo();

  // Task 6
  print('\n--- Task 6: Library Management ---');
  BorrowedBook book = BorrowedBook('Flutter Basics', 'John');
  book.displayBookInfo();
  print('');
  book.borrowBook();
  book.borrowBook();
  book.returnBook();
  print('Current Status: ${book.getStatus()}');
}
