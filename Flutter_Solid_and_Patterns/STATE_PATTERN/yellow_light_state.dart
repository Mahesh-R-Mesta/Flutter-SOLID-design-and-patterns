import 'base_state.dart';
import 'green_light_state.dart';
import 'traffic_light.dart';

class YellowLightState extends BaseLight {
  @override
  void next(TrafficLight traffic) {
    traffic.state = GreenLightState();
  }

  @override
  String value() => "Yellow";
}
