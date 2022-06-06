import 'package:strategy_pattern/flying_behavior/fly_behavior.dart';

class FlyWithRocket implements FlyBehavior {
  @override
  void fly() {
    print("I can fly with the help of a rocket");
  }
}
