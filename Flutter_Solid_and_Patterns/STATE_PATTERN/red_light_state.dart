import 'base_state.dart';
import 'traffic_light.dart';
import 'yellow_light_state.dart';

class RedLightState extends BaseLight {
  @override
  void next(TrafficLight traffic) {
    traffic.state = YellowLightState();
  }

  @override
  String value() => "Red";
}
