void main() {
  // 1. Print numbers from 1 to 20 using a for loop
  print('--- Task 1: Numbers 1 to 20 ---');
  for (int i = 1; i <= 20; i++) {
    print(i);
  }

  // 2. List of 5 favorite foods
  print('--- Task 2: Favorite Foods ---');
  List<String> foods = ['Pizza', 'Koshary', 'Tajine', 'Sushi', 'Pasta'];
  for (String food in foods) {
    print(food);
  }

  // 3. Print only even numbers from a list
  print('--- Task 3: Even Numbers ---');
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  for (int num in numbers) {
    if (num.isEven) {
      print(num);
    }
  }

  // 4. Switch statement for day name
  print('--- Task 4: Day Name ---');
  int dayNumber = 3;
  switch (dayNumber) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day number');
  }

  // 5. Find the biggest number in a list
  print('--- Task 5: Biggest Number ---');
  List<int> nums = [15, 42, 8, 23, 4];
  int biggest = nums[0];
  for (int n in nums) {
    if (n > biggest) {
      biggest = n;
    }
  }
  print('Biggest number: $biggest');

  // 6. While loop to print "Hello" 10 times
  print('--- Task 6: Hello 10 times ---');
  int count = 1;
  while (count <= 10) {
    print('Hello');
    count++;
  }

  // 7. Loop through student names using switch based on index
  print('--- Task 7: Student Names ---');
  List<String> students = ['Ahmed', 'Sara', 'Youssef', 'Fatima', 'Ali'];
  for (int i = 0; i < students.length; i++) {
    switch (i) {
      case 0:
        print('First student: ${students[i]}');
        break;
      case 1:
        print('Second student: ${students[i]}');
        break;
      case 2:
        print('Third student: ${students[i]}');
        break;
      case 3:
        print('Fourth student: ${students[i]}');
        break;
      case 4:
        print('Fifth student: ${students[i]}');
        break;
      default:
        print('Student number ${i + 1}: ${students[i]}');
    }
  }
}
