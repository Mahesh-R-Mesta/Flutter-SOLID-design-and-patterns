// flutter widget example
abstract class Widget {
  String name = "widget";
  @override
  String toString() {
    return name;
  }
}

class Image extends Widget {
  Image() {
    super.name = "Image widget";
  }
}

class Button extends Widget {
  Button() {
    super.name = "button widget";
  }
}

class Container extends Widget {
  Container() {
    super.name = "container widget";
  }
}

// base
abstract class Render {
  Widget getRenderer();
}

class ImageRenderer extends Render {
  @override
  Widget getRenderer() {
    return Image();
  }
}

class ButtonRenderer extends Render {
  @override
  Widget getRenderer() {
    return Button();
  }
}

class ContainerRenderer extends Render {
  @override
  Widget getRenderer() {
    return Container();
  }
}
