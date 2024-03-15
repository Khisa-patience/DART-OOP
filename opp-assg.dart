/*Submit a working github repository to this form  https://forms.gle/1Wv1Wqd9y1epKH7E9

TOPIC: Assignment  Technical Assignment Challenge: Object-Oriented Programming in Dart

This technical assignment challenge is designed to assess a learner's understanding of object-oriented programming (OOP) in Dart. The challenge should be pushed to GitHub and the solution should be submitted via a link.

The challenge is to create a program that has the following features:
An object-oriented model that uses classes and inheritance
A class that implements an interface
A class that overrides an inherited method
An instance of a class that is initialized with data from a file
A method that demonstrates the use of a loop*/

//define an interface
abstract class Shape {
  void draw();
}
//base class that implements the shape inteface
class BaseShape implements Shape {
  @override
  void draw() {
    print('Drawing base shape');
  }
}
//derived class inheriting from baseshape
class DerivedShape extends BaseShape{
  @override
  void draw() {
    print('Drawing derived shape');
  }
}
//class that initializes data from a file

class DataFromFile {
  String filename;

  DataFromFile(this.filename);

  void readData() {
    print('Reading data from file: $filename');
  }
}
void main() {
  // Create an instance of DerivedShape
  var derivedShape = DerivedShape();
  derivedShape.draw();

  // Create an instance of DataFromFile and read data
  var data =  DataFromFile('example.txt');
  data.readData();

//method that demonstrates the use of a loop
 print('Loop demonstration:');
  for (var i = 0; i < 5; i++) {
    print('Iteration $i');
  }
}