abstract class BaseObserver {
  void update(String state);
}

class UpdateButtonObserver extends BaseObserver {
  @override
  void update(String state) {
    print("Button state $state");
  }
}

class UpdateScreenObserver extends BaseObserver {
  @override
  void update(String state) {
    print("Screen state $state");
  }
}

class UpdateImageObserver extends BaseObserver {
  @override
  void update(String state) {
    print("Image state $state");
  }
}
