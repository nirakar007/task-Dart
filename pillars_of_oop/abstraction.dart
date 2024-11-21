abstract class Shape {
  void make();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  void make() {
    print("making an egg with radius: $radius");
  }
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  void make() {
    print("making an omelette of area:${width * height}cmsq. ");
  }
}
