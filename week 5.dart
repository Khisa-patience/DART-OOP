The challenge is to create a program that meets the following requirements:

Create two classes, one for a student and one for a teacher.
The student class should have a name, age and grade level.
The teacher class should have a name, age, and the subject they teach.
Create a method in the student class that prints out the student's information.
Create a method in the teacher class that prints out the teacher's information.
Create a third class that creates a student and teacher object, and calls the methods to print out the information.
  
class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student Information:');
    print('Name: $name');
    print('Age: $age');
    print('Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher Information:');
    print('Name: $name');
    print('Age: $age');
    print('Subject: $subject');
  }
}

class School {
  void printInformation() {
    Student student = Student('John', 15, '10th');
    Teacher teacher = Teacher('Ms. Smith', 35, 'Mathematics');

    student.printStudentInfo();
    print('\n');
    teacher.printTeacherInfo();
  }
}

void main() {
  School school = School();
  school.printInformation();
}
