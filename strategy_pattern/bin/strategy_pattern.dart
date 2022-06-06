import 'package:strategy_pattern/flying_behavior/fly_with_rocket.dart';
import 'package:strategy_pattern/ducks/mallard_duck.dart';
import 'package:strategy_pattern/ducks/rubber_duck.dart';

void main(List<String> arguments) {
  // mallard duck that already can fly and quack
  MallardDuck mallardDuck = MallardDuck();
  mallardDuck.performFly();
  mallardDuck.perfromQuack();

  // Rubber toy duck that cannot fly but squaek
  RubberDuck rubberDuck = RubberDuck();
  rubberDuck.performFly();
  rubberDuck.perfromQuack();
  // changing flying behavior to enable flying
  rubberDuck.setFlyBeahvior(FlyWithRocket());
  rubberDuck.performFly();
}
