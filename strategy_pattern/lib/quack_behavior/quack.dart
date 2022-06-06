import 'package:strategy_pattern/quack_behavior/quack_behavior.dart';

class Quack implements QuackBehavior {
  @override
  void quack() {
    print("Quaaaaaaaaaack");
  }
}
