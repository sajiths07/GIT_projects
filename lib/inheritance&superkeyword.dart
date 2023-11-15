// Creating Parent class
class ParentClass {
  String shot = "This is a shot on Super Keyword";
}

// Creating child class
class SubClass extends ParentClass {

  String shot = "Educative";
  // Accessing parent class variable
  void showMessage(){

    print(super.shot);

    print("$shot has ${shot.length} letters.");
  }
}

void main(){
  // Creating child class instance
  SubClass myClass = new SubClass();

  // Calling child class method
  myClass.showMessage();
}