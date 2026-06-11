# Inheritance

Inheritance allows a class to extend another class and reuse or override its behavior.
In Dart, use the `extends` keyword to create a subclass.

## Key points

- Subclasses inherit fields and methods from their superclass.
- Override methods using the `@override` annotation.
- Use `super` to access the parent class implementation.

## Example

```dart
class Animal {
  void speak() {
    print('Animal sound');
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print('Woof!');
  }
}
```

## Usage

```dart
final dog = Dog();
dog.speak();
```

## When to use

Use inheritance when you want to create a specialized version of an existing class and share common behavior.
