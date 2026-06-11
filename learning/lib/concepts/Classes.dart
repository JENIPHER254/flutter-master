
class Animals {
  String name;
  String category;

  // constructor = Animals(this.name, this.category); 
  // in this code the this. operator is used to specify a specific class instance as declared by the user
  Animals(this.name, this.category);

  List<String> cat() {
    return ([name, category]);
  }
}
