// Task 1 — Rectangle Area
double calculateRectangleArea(double width, double height) {
  return width * height;
}

// Task 2 — Palindrome Checker
bool isPalindrome(String text) {
   String cleaned = text.toLowerCase().replaceAll(' ', '');
   return cleaned == cleaned.split('').reversed.join('');
}

// Task 3 — Named & Optional Parameters
String buildUserProfile(String name, {int age = 18, String city = "Unknown"}) {
  return "Name: $name, Age: $age, City: $city";
}

// Task 4 — Filter a List with a Function Parameter
List<int> filterNumbers(List<int> nums, bool Function(int) test) {
  return nums.where(test).toList();
}

void main() {
  // Task 1
   double area = calculateRectangleArea(5.5, 3.2);
   print(area);

  // Task 2
   print(isPalindrome("Race car")); // true

  // Task 3
   print(buildUserProfile("Ali", age: 20, city: "Cairo"));
  // Name: Ali, Age: 20, City: Cairo

  // Task 4
  List<int> numbers = [2, 5, 8, 11, 14, 3, 20, 7];
   print(filterNumbers(numbers, (n) => n % 2 == 0)); // even numbers
   print(filterNumbers(numbers, (n) => n > 10)); // numbers > 10
}
