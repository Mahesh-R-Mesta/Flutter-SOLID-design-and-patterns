import 'observer.dart';

class ObserverNotifier {
  String? _state;
  List<BaseObserver> _observers = [];

  attach(BaseObserver observer) => _observers.add(observer);

  detach(BaseObserver observer) => _observers.remove(observer);

  updateState(String state) {
    _state = state;
    for (final observer in _observers) {
      observer.update(state);
    }
  }

  String? get state => _state;
}
