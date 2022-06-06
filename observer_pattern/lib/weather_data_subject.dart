import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/subject.dart';

class WeatherDataSubject implements Subject {
  late double _temp;
  late double _humidity;
  late double _pressure;
  late List<Observer> observers;

  WeatherDataSubject() {
    observers = [];
  }

  @override
  void notifyObservers() {
    for (Observer observer in observers) {
      observer.update(_temp, _humidity, _pressure);
    }
  }

  @override
  void registerObserver(Observer o) {
    observers.add(o);
  }

  @override
  void removeObserver(Observer o) {
    observers.remove(o);
  }

  void setMeasurements(double temp, double humidity, double pressure) {
    _temp = temp;
    _humidity = humidity;
    _pressure = pressure;
    notifyObservers();
  }

  void measurementsChanged() {
    notifyObservers();
  }
}
