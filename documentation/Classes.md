# Classes

In Dart, classes are the primary way to define custom types and organize code.
A class can contain fields, constructors, methods, getters, setters, and static members.

## Key points

- Classes group data and behavior together.
- Constructors initialize new instances.
- Dart supports named constructors and optional parameters.

## Example

```dart
class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print('Hello, my name is $name.');
  }
}
```

## Usage

```dart
final person = Person('Alice', 30);
person.greet();
```

## When to use

Use classes to model objects and encapsulate related functionality in a reusable way.
