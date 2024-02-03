abstract class SpaceShip {
  (double, double) getPosition();
  double getSpeed();
}

class USSRSpaceShip extends SpaceShip {
  double xPosition;
  double yPosition;
  double speed;
  USSRSpaceShip(this.xPosition, this.yPosition, this.speed);

  @override
  double getSpeed() {
    return speed;
  }

  @override
  (double, double) getPosition() {
    return (xPosition, yPosition);
  }
}

class MiliumFalcon extends SpaceShip {
  double xPosition;
  double yPosition;
  double speed;
  MiliumFalcon(this.xPosition, this.yPosition, this.speed);

  @override
  double getSpeed() {
    return speed;
  }

  @override
  (double, double) getPosition() {
    return (xPosition, yPosition);
  }
}

class VikramSpaceShip extends SpaceShip {
  double xPosition;
  double yPosition;
  double speed;
  VikramSpaceShip(this.xPosition, this.yPosition, this.speed);

  @override
  double getSpeed() {
    return speed;
  }

  @override
  (double, double) getPosition() {
    return (xPosition, yPosition);
  }
}

class NormalSpaceShip extends SpaceShip {
  double xPosition;
  double yPosition;
  double speed;
  NormalSpaceShip(this.xPosition, this.yPosition, this.speed);

  @override
  double getSpeed() {
    return speed;
  }

  @override
  (double, double) getPosition() {
    return (xPosition, yPosition);
  }
}

enum SpaceShipType { ussr, falcon, vikram, normal }

class Configuration {
  SpaceShipType type;
  double speed;
  double xPosition;
  double yPosition;
  Configuration(this.type, this.speed, this.xPosition, this.yPosition);
}

class SpaceShipFactory {
  SpaceShipFactory._();
  static SpaceShip create(Configuration config) {
    switch (config.type) {
      case SpaceShipType.ussr:
        {
          return USSRSpaceShip(
              config.xPosition, config.yPosition, config.speed);
        }
      case SpaceShipType.falcon:
        {
          return MiliumFalcon(config.xPosition, config.yPosition, config.speed);
        }
      case SpaceShipType.vikram:
        {
          return VikramSpaceShip(
              config.xPosition, config.yPosition, config.speed);
        }
      default:
        {
          return NormalSpaceShip(
              config.xPosition, config.yPosition, config.speed);
        }
    }
  }
}
