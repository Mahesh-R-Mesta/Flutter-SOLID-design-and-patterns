import 'dart:math';

import 'stratergy_pattern.dart';

//use strategy instead of if else statement
void main() {
  late Render _render;
  final condition = Random().nextInt(3);
  //on image select
  switch (condition) {
    case 0:
      {
        _render = ImageRenderer();
      }
    case 1:
      {
        _render = ButtonRenderer();
      }
    case 2:
      {
        _render = ContainerRenderer();
      }
  }
  Widget widget = _render.getRenderer();
  print(widget.toString());
}
