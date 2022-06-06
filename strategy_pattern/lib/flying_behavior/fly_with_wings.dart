import 'package:strategy_pattern/flying_behavior/fly_behavior.dart';

class FlyWithWings implements FlyBehavior {
  @override
  void fly() {
    print("I can fly with my wings");
  }
}
