import 'dart:math';

// 1. BankAccount
class BankAccount {
  double _balance = 0;

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    } else {
      print('Insufficient funds or invalid amount');
    }
  }

  double get balance => _balance;
}

// 2. Student
class Student {
  String _name;
  int _grade;

  Student(this._name, this._grade);

  String get name => _name;
  int get grade => _grade;

  set grade(int value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print('Grade must be between 0 and 100');
    }
  }
}

// 3. Vehicle / Car
class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void describe() {
    print('Brand: $brand, Speed: $speed');
  }
}

class Car extends Vehicle {
  int doors;

  Car(String brand, int speed, this.doors) : super(brand, speed);

  @override
  void describe() {
    super.describe();
    print('Doors: $doors');
  }
}

// 4. Animal / Dog
class Animal {
  String name;
  Animal(this.name);
}

class Dog extends Animal {
  String breed;
  Dog(String name, this.breed) : super(name);
}

// 5. Shape / Rectangle / Circle
abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => pi * radius * radius;
}

// 6. Employee / Developer
abstract class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work();

  void introduce() {
    print('Hi, I am $name');
  }
}

class Developer extends Employee {
  Developer(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('$name is writing code');
  }
}

// 7. Flyable / Swimmable / Duck
abstract class Flyable {
  void fly();
}

abstract class Swimmable {
  void swim();
}

class Duck implements Flyable, Swimmable {
  @override
  void fly() => print('Duck is flying');

  @override
  void swim() => print('Duck is swimming');
}

// 8. Drawable / Square / Triangle
abstract class Drawable {
  void draw();
  String getColor();
}

class Square implements Drawable {
  String color;
  double side;
  Square(this.color, this.side);

  @override
  void draw() => print('Drawing a square with side $side');

  @override
  String getColor() => color;
}

class Triangle implements Drawable {
  String color;
  double base, height;
  Triangle(this.color, this.base, this.height);

  @override
  void draw() => print('Drawing a triangle with base $base and height $height');

  @override
  String getColor() => color;
}

// 9. Counter
class Counter {
  int _count = 0;

  void increment() => _count++;

  void decrement() {
    if (_count > 0) _count--;
  }

  void reset() => _count = 0;

  int get count => _count;
}

// ---------------- main: تجربة كل الكلاسات ----------------
void main() {
  // 1. BankAccount
  var account = BankAccount();
  account.deposit(500);
  account.withdraw(200);
  print('Balance: ${account.balance}');

  // 2. Student
  var student = Student('Ahmed', 85);
  student.grade = 95;
  print('${student.name} grade: ${student.grade}');

  // 3. Vehicle / Car
  var car = Car('Toyota', 180, 4);
  car.describe();

  // 4. Animal / Dog
  var dog = Dog('Rex', 'Labrador');
  print('Dog name: ${dog.name}, breed: ${dog.breed}');

  // 5. Shape
  Shape rect = Rectangle(4, 5);
  Shape circle = Circle(3);
  print('Rectangle area: ${rect.area()}');
  print('Circle area: ${circle.area()}');

  // 6. Employee / Developer
  var dev = Developer('Sara', 8000);
  dev.introduce();
  dev.work();

  // 7. Flyable / Swimmable / Duck
  var duck = Duck();
  duck.fly();
  duck.swim();

  // 8. Drawable
  Drawable square = Square('Red', 4);
  Drawable triangle = Triangle('Blue', 3, 6);
  square.draw();
  print('Square color: ${square.getColor()}');
  triangle.draw();
  print('Triangle color: ${triangle.getColor()}');

  // 9. Counter
  var counter = Counter();
  counter.increment();
  counter.increment();
  counter.increment();
  print('Counter: ${counter.count}'); // 3

  counter.decrement();
  print('Counter: ${counter.count}'); // 2

  counter.reset();
  print('Counter: ${counter.count}'); // 0

  counter.decrement();
  print('Counter: ${counter.count}'); // 0
}