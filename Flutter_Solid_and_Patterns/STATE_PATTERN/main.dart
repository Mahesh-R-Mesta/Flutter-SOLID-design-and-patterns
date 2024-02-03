import 'red_light_state.dart';
import 'traffic_light.dart';

void main() {
  final traffic = TrafficLight(RedLightState());
  print(traffic.state.value());
  traffic.next();
  print(traffic.state.value());
  traffic.next();
  print(traffic.state.value());
  traffic.next();
  print(traffic.state.value());
  traffic.next();
  print(traffic.state.value());
  traffic.next();
  print(traffic.state.value());
}
