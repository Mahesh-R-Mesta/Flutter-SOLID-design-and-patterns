class User {
  final String name;
  final String email;
  final String phoneNumber;
  User(this.name, this.email, this.phoneNumber);

  @override
  String toString() {
    return "name: $name - email:$email - number:$phoneNumber\n";
  }
}
