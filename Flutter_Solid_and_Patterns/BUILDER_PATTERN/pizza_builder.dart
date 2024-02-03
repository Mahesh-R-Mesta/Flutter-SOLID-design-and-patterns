//base builder
import 'pizza.dart';

abstract class BasePizzaBuilder {
  late Pizza pizza;
  late String name;

  // declare builder method which used commonly by all
  createPizza() {
    pizza = Pizza();
    pizza.setName(name);
  }

  Pizza getPizza() {
    return pizza;
  }

  void setPrice(double value) {
    pizza.setPrice(value);
  }

  void setSize(PizzaSize value) {
    pizza.setSize(value);
  }

  // declare abstract methods which varies for all others
  void buildSauce();
  void buildTopping();
  void buildCrust();
}

class LocalPizzaBuilder extends BasePizzaBuilder {
  LocalPizzaBuilder() {
    super.name = "Normal pizza";
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.small);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.tomato);
  }

  @override
  void buildTopping() {
    pizza
      ..addTop('ham')
      ..addTop('pineapple');
  }
}

class LaPinozPizzaBuilder extends BasePizzaBuilder {
  LaPinozPizzaBuilder() {
    super.name = "la pinza pizza";
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.large);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.spice);
  }

  @override
  void buildTopping() {
    pizza
      ..addTop('new york cheese')
      ..addTop('paneer tikka');
  }
}
