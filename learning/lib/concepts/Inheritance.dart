import 'package:learning/concepts/Classes.dart';

class SuperAnimal extends Animals {
  // this is a constructor for the super animal.
  // the super inherits the items from the parent class
  SuperAnimal(super.name, super.category);
  String publish() {
    return('this is a super user');
  }
}
