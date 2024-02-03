// class should have single resposibility

// un optimized code
class User {
  String username;
  String email;
  User(this.username, this.email);

  showGreet() {
    print("Welcome $username");
  }
}

//optimized

class User2 {
  String username;
  String email;
  User2(this.username, this.email);
}

class Greet {
  User2 user;
  Greet(this.user);
  showGreet() {
    print("Welcome ${user.username}");
  }
}
