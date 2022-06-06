import 'package:strategy_pattern/ducks/duck.dart';
import 'package:strategy_pattern/flying_behavior/fly_with_wings.dart';
import 'package:strategy_pattern/quack_behavior/quack.dart';

class MallardDuck extends Duck {
  MallardDuck() {
    flyBehavior = FlyWithWings();
    quackBehavior = Quack();
  }
  @override
  void display() {
    print("looks like mallard duck");
  }
}
