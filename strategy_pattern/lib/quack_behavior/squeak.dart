import 'package:strategy_pattern/quack_behavior/quack_behavior.dart';

class Squeak implements QuackBehavior {
  @override
  void quack() {
    print("Squeeeeeeeeeeeaaaaaaak");
  }
}
