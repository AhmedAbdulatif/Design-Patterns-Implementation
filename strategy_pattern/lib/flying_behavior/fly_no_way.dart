import 'package:strategy_pattern/flying_behavior/fly_behavior.dart';

class FlyNoWay implements FlyBehavior {
  @override
  void fly() {
    print("I cannot fly, i have no wings");
  }
}
