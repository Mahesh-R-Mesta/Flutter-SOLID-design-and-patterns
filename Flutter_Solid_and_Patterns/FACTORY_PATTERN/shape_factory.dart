// abstract class
abstract class Shape {
  double getArea();
}

// rectangle
class Rectangle extends Shape {
  final double width;
  final double height;
  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

// square
class Square extends Shape {
  final double dimension;
  Square(this.dimension);

  @override
  double getArea() {
    return dimension * dimension;
  }
}

// circle
class Circle extends Shape {
  final double radius;
  Circle(this.radius);

  @override
  double getArea() {
    return 2 * 3.142 * radius;
  }
}

class NullShape extends Shape {
  @override
  double getArea() {
    return -1;
  }
}

enum ShapeType { rectangle, square, circle, nullShape }

class Context {
  ShapeType shape;
  double? radius;
  double? height;
  double? width;
  Context(this.shape, {this.height, this.width, this.radius});
}

class ShapeFactory {
  static Shape create(Context context) {
    switch (context.shape) {
      case ShapeType.rectangle:
        {
          return Rectangle(context.height!, context.width!);
        }
      case ShapeType.square:
        {
          return Square(context.height!);
        }
      case ShapeType.circle:
        {
          return Circle(context.radius!);
        }
      default:
        {
          return NullShape();
        }
    }
  }
}
