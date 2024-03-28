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
