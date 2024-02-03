import 'shape_factory.dart';
import 'space_factory.dart';

void main() {
  final context = Context(ShapeType.rectangle, width: 100, height: 50);
  final Shape shape = ShapeFactory.create(context);
  print("${context.shape} -> ${shape.getArea()}");

  final context2 = Context(ShapeType.circle, radius: 10);
  final Shape shape2 = ShapeFactory.create(context2);
  print("${context2.shape} -> ${shape2.getArea()}");

  final shipConfig = Configuration(SpaceShipType.falcon, 1000, 10, 10);
  final SpaceShip ship = SpaceShipFactory.create(shipConfig);
  print("${shipConfig.type} -> ${ship.getSpeed()}");

  final shipConfig2 = Configuration(SpaceShipType.vikram, 99999, 10, 10);
  final SpaceShip ship2 = SpaceShipFactory.create(shipConfig2);
  print("${shipConfig2.type} -> ${ship2.getSpeed()}");
}
