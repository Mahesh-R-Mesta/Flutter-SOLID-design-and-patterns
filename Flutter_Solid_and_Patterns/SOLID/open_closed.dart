// class should be open for extension but closed for modification
// un proper code
class Shape {
  String? type;
}

class AreaCalculator {
  getAreaCalculated(Shape shape) {
    if (shape.type == "Circle") {
    } else if (shape.type == "Square") {}
  }
}

//code with closed-open principle

abstract class Shape2 {
  double getArea();
}

class Circle extends Shape2 {
  double radius;
  Circle(this.radius);
  @override
  double getArea() {
    return 3.145 * radius * radius;
  }
}

class Square extends Shape2 {
  double dimension;
  Square(this.dimension);
  @override
  double getArea() {
    return dimension * dimension;
  }
}

// this will act as abstraction which hides implementaion
class AreaCalculator2 {
  getCalculateArea(Shape2 shape) {
    return shape.getArea();
  }
}
