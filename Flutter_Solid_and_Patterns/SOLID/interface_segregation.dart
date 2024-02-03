// classes should not be forced to use interface which they don't use

// in-appropriate interface
abstract class SmartDevice {
  void showTime();
  void call();
  void sendEmail();
  void browse();
}

class SmartPhone extends SmartDevice {
  @override
  void browse() {
    print("browse");
  }

  @override
  void call() {
    print("call");
  }

  @override
  void sendEmail() {
    print("send Email");
  }

  @override
  void showTime() {
    print("time");
  }
}

// using unused interfaces
class SmartWatch extends SmartDevice {
  @override
  void browse() {
    throw UnimplementedError();
  }

  @override
  void call() {
    print("call");
  }

  @override
  void sendEmail() {
    throw UnimplementedError();
  }

  @override
  void showTime() {
    print("time");
  }
}

//solution

abstract class ShowTime {
  void showTime();
}

abstract class MakeCall {
  void call();
}

abstract class SendEmail {
  void sendEmail();
}

abstract class Browse {
  void browse();
}

class SmartPhone2 implements MakeCall, ShowTime, Browse, SendEmail {
  @override
  void browse() {
    print("browse");
  }

  @override
  void call() {
    print("call");
  }

  @override
  void sendEmail() {
    print("send Email");
  }

  @override
  void showTime() {
    print("time");
  }
}

class SmartWatch2 implements ShowTime, MakeCall {
  @override
  void call() {
    print("call");
  }

  @override
  void showTime() {
    print("time");
  }
}
