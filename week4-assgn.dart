import 'dart:io';

// Define an interface
abstract class Shape {
  void draw();
}

// Define a base class implementing the Shape interface
class BaseShape implements Shape {
  @override
  void draw() {
    print('Drawing a shape');
  }
}

// Define a derived class that overrides the draw method
class Circle extends BaseShape {
  @override
  void draw() {
    print('Drawing a circle');
  }
}

// Define a class with a method to read data from a file
class FileReader {
  String readDataFromFile(String filename) {
    try {
      File file = File(filename);
      String contents = file.readAsStringSync();
      return contents;
    } catch (e) {
      print('Error reading file: $e');
      return;
    }
  }
}

void main() {
  // Create an instance of Circle class
  Circle circle = Circle();
  circle.draw(); // Output: Drawing a circle

  // Create an instance of FileReader class
  FileReader fileReader = FileReader();

  // Read data from a file and print it using a loop
  String filename = 'data.txt'; // Assuming data is stored in data.txt
  String data = fileReader.readDataFromFile(filename);
  if (data != null) {
    print('Data from file:');
    // Split data by lines and print each line
    List<String> lines = data.split('\n');
    for (String line in lines) {
      print(line);
    }
  } else {
    print('No data available');
  }
}
