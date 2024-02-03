class LocalStorage {
  static final LocalStorage storage = LocalStorage._internal();

  LocalStorage._internal();

  factory LocalStorage() {
    return storage;
  }
}

void main() {
  final storage1 = LocalStorage();
  final storage2 = LocalStorage();
  if (storage1 == storage2) {
    print("Both are same");
  }
}
