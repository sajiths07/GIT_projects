// Define an interface using an abstract class
abstract class Animal {
  void makeSound();
  void eat();
}

// Implement the interface in a class
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof! Woof!');
  }

  @override
  void eat() {
    print('Dog is eating');
  }

  void fetch() {
    print('Dog is fetching');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Meow! Meow!');
  }

  @override
  void eat() {
    print('Cat is eating');
  }

  void climb() {
    print('Cat is climbing');
  }
}

void main() {
  // Create instances of the classes
  var dog = Dog();
  var cat = Cat();

  // Use the interface methods
  dog.makeSound();
  dog.eat();
  dog.fetch();

  cat.makeSound();
  cat.eat();
  cat.climb();
}
