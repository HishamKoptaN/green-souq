import 'dart:async';

class AppEventBus {
  static final StreamController<dynamic> _streamController =
      StreamController.broadcast();
  static Stream<T> on<T>() {
    return _streamController.stream.where((event) {
      return event is T;
    }).cast<T>();
  }

  static void fire(dynamic event) {
    _streamController.add(event);
  }
}
