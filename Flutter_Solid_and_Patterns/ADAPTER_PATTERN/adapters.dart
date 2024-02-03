import 'csv_adaptee.dart';
import 'json_adaptee.dart';
import 'user.dart';

abstract class BaseAdapter {
  void parse();
  List<User> getUserData();
}

class JSONAdapter extends BaseAdapter {
  final jsonDataProvider = JsonDataProvider(); //adaptee
  List<User> users = [];

  @override
  List<User> getUserData() => users;

  @override
  void parse() {
    users.clear();
    final data = jsonDataProvider.getData();
    users = (data['users'] as List)
        .map((data) => User(data['name'], data['email'], data['phoneNumber']))
        .toList();
  }
}

class CSVAdapter extends BaseAdapter {
  final csvDataProvider = CsvDataProvider();
  List<User> users = [];
  @override
  List<User> getUserData() => users;

  @override
  void parse() {
    final csvString = csvDataProvider.getData();
    users = csvString.split('\n').map((chunks) {
      final list = chunks.split(',').toList();
      return User(list[0], list[1], list[2]);
    }).toList();
  }
}
