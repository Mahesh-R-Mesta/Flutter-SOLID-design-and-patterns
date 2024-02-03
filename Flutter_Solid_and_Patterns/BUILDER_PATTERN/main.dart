import 'pizza.dart';
import 'pizza_builder.dart';
import 'pizza_director.dart';

void main() {
  final pizzaDirector = PizzaDirector();

  final localPizzaBuilder = LocalPizzaBuilder();

  pizzaDirector
    ..setBuilder(localPizzaBuilder)
    ..makePizza();
  localPizzaBuilder
    ..setPrice(50)
    ..setSize(PizzaSize.normal);
  final pizza = pizzaDirector.getPizza();

  print(pizza.name);

  final topPizzaBuilder = LaPinozPizzaBuilder();

  pizzaDirector
    ..setBuilder(topPizzaBuilder)
    ..makePizza();
  topPizzaBuilder
    ..setPrice(500)
    ..setSize(PizzaSize.large);

  final pizza2 = pizzaDirector.getPizza();

  print(pizza2.name);
}
