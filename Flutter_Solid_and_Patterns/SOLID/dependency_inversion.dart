// the direct dependencies should depend on abstraction not concretions
//it helps to loose couple dependencies

class User {
  String name;
  String email;
  User(this.name, this.email);
}

class MySQLDatabase {
  void saveUser(User user) {
    print("UserData saved");
  }
}

// db is directly created from concretion without depending on abstraction which cause difficulties to change in future
class UserService {
  MySQLDatabase database;
  UserService(this.database);

  saveUserData(User user) {
    database.saveUser(user);
  }
}

// solutions
abstract class Database {
  void saveUser(User user);
}

class MySQLDatabase2 extends Database {
  void saveUser(User user) {
    print("UserData saved");
  }
}

class PostGreySQLDatabase extends Database {
  void saveUser(User user) {
    print("UserData saved");
  }
}

// dependence is now depend on abstraction
class UserService2 {
  Database database;
  UserService2(this.database);

  saveUserData(User user) {
    database.saveUser(user);
  }
}
