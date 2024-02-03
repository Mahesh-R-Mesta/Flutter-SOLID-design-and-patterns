enum PizzaSize { small, normal, large }

enum PizzaSauce { hot, tomato, chilly, spice }

enum PizzaCrust { small, medium, large }

class Pizza {
  late final PizzaSize _size;
  late final PizzaSauce _sauce;
  late final PizzaCrust _crust;
  late final double _price;
  late final String _name;
  final List<String> topFlavours = [];
  PizzaCrust get crust => _crust;
  PizzaSauce get sauce => _sauce;
  PizzaSize get size => _size;
  double get price => _price;
  String get name => _name;

  void setCrust(PizzaCrust value) {
    _crust = value;
  }

  void setSauce(PizzaSauce value) {
    _sauce = value;
  }

  void setSize(PizzaSize value) {
    _size = value;
  }

  void addTop(String flavour) {
    topFlavours.add(flavour);
  }

  void setPrice(double value) {
    _price = value;
  }

  void setName(String value) {
    _name = value;
  }
}
