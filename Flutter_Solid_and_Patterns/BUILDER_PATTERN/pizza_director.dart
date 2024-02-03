import 'pizza.dart';
import 'pizza_builder.dart';

class PizzaDirector {
  late BasePizzaBuilder _builder;

  setBuilder(BasePizzaBuilder builder) {
    _builder = builder;
  }

  Pizza getPizza() {
    return _builder.getPizza();
  }

  makePizza() {
    _builder.createPizza();
    _builder.buildCrust();
    _builder.buildSauce();
    _builder.buildTopping();
  }
}
