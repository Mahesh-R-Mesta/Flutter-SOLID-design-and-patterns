import 'base_state.dart';
import 'red_light_state.dart';
import 'traffic_light.dart';

class GreenLightState extends BaseLight {
  @override
  void next(TrafficLight traffic) {
    traffic.state = RedLightState();
  }

  @override
  String value() => "Green";
}
