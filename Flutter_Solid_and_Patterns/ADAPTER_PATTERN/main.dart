import 'adapters.dart';

void main() {
  final jsonAdapter = JSONAdapter();
  final csvAdapter = CSVAdapter();
  jsonAdapter.parse();
  print("JSON ADAPTER");
  print(jsonAdapter.getUserData().map((e) => e.toString()));

  csvAdapter.parse();
  print("CSV ADAPTER");
  print(csvAdapter.getUserData().map((e) => e.toString()));
}
