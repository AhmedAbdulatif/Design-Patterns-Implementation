import 'package:strategy_pattern/ducks/duck.dart';
import 'package:strategy_pattern/flying_behavior/fly_no_way.dart';
import 'package:strategy_pattern/quack_behavior/squeak.dart';

class RubberDuck extends Duck {
  RubberDuck() {
    flyBehavior = FlyNoWay();
    quackBehavior = Squeak();
  }
  @override
  void display() {
    print("looks like rubber duck");
  }
}
