import 'traffic_light.dart';

abstract class BaseLight {
  void next(TrafficLight traffic);

  String value();
}
