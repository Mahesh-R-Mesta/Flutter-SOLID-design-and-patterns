import 'base_state.dart';

class TrafficLight {
  BaseLight _light;
  TrafficLight(this._light);

  void next() {
    _light.next(this);
  }

  BaseLight get state => _light;

  set state(BaseLight light) => _light = light;
}
