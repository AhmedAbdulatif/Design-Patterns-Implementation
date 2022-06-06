import 'package:strategy_pattern/quack_behavior/quack_behavior.dart';

class MuteQuack implements QuackBehavior {
  @override
  void quack() {
    print("I cannot quack !!!!");
  }
}
