import 'package:strategy_pattern/flying_behavior/fly_behavior.dart';
import 'package:strategy_pattern/quack_behavior/quack_behavior.dart';

abstract class Duck {
  FlyBehavior? flyBehavior;
  QuackBehavior? quackBehavior;

  Duck();
  void swim() {
    print("yes ,I can Swim !!!");
  }

  void display();

  void setFlyBeahvior(FlyBehavior flyBehavior) {
    this.flyBehavior = flyBehavior;
  }

  void setQuackBeahvior(QuackBehavior quackBehavior) {
    this.quackBehavior = quackBehavior;
  }

  void performFly() {
    flyBehavior!.fly();
  }

  void perfromQuack() {
    quackBehavior!.quack();
  }
}
