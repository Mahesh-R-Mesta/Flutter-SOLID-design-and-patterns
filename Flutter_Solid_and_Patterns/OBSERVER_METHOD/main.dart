import 'notifier.dart';
import 'observer.dart';

void main() {
  final notifier = ObserverNotifier();
  final buttonObserver = UpdateButtonObserver();
  notifier.attach(buttonObserver);
  notifier.attach(UpdateImageObserver());
  notifier.attach(UpdateScreenObserver());
  notifier.updateState(" ui is visible");
  notifier.detach(buttonObserver);
  notifier.updateState(" ui is hidden");
}
