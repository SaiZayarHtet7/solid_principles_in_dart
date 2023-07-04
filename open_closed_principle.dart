///SOLID Principle
//O --- Open closed Principle

void main() {
  List<Shape> shapes = [Rectangle(width: 199, height: 2), Circle(radius: 23)];
  printAreas(shapes);
}

class Shape {
  double calculateArea() {
    //Default implementation for calculation area
    return 0;
  }
}

///In this code , we have a base ["SHAPE"] class and providing its specific implementation of the
///"calculateArea()" method , the "printArea" function remains unchanged can handle the name "Triangle" shape without any modifications.
///
///By adhering to the OPEN-CLOSED-PRINCIPLES ,we can introduce new functionality be extending existing classes without modifying their implementation
///This will promote the code reusability and maintainability and reduce the risk of introducing bugs in existing code.
///

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle({required this.width, required this.height});

  @override
  double calculateArea() {
    return width * height;
  }
}

class Circle extends Shape {
  double radius;
  Circle({required this.radius});

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}


//SO we can extend the code without modifying code 
class Triangle extends Shape {
  double height, base;

  Triangle({required this.height, required this.base});

  @override
  double calculateArea() {
    return 0.5 * base * height;
  }
}

void printAreas(List<Shape> shapes) {
  for (var shape in shapes) {
    print("Area: ${shape.calculateArea()}");
  }
}
