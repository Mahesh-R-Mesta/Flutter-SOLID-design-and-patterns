//funtions that use pointers or references to base classes must be able to use object of derived classes without knowing it.
//in appropriate method
abstract class Vehicle {
  void refuel();
  void move();
}

class PetrolCar extends Vehicle {
  @override
  void move() {
    print("moving...");
  }

  @override
  void refuel() {
    print("Charging...");
  }
}

// electric car cannot refuel but recharge
class ElectricCar extends Vehicle {
  @override
  void move() {
    print("moving...");
  }

  @override
  void refuel() {
    print("Charging...");
  }
}

//solution:

abstract class Vehicle2 {
  void move();
}

abstract class ElectricVehicle extends Vehicle2 {
  void recharge();
}

abstract class FuelVehicle extends Vehicle2 {
  void refuel();
}

class PetrolCar2 extends FuelVehicle {
  @override
  void move() {
    print("moving...");
  }

  @override
  void refuel() {
    print("fueling...");
  }
}

class ElectricCar2 extends ElectricVehicle {
  @override
  void move() {
    print("moving...");
  }

  @override
  void recharge() {
    print("Charging...");
  }
}
