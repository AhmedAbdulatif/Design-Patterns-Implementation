import 'package:observer_pattern/display.dart';
import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/weather_data_subject.dart';

class ForecastDisplay implements Observer, Display {
  double _currentPressure = 29.92;
  late double _lastPressure;
  late WeatherDataSubject _weatherDataSubject;

  ForecastDisplay(WeatherDataSubject weatherData) {
    _weatherDataSubject = weatherData;
    _weatherDataSubject.registerObserver(this);
  }

  @override
  void update(double temp, double humidity, double pressure) {
    _lastPressure = _currentPressure;
    _currentPressure = pressure;

    display();
  }

  @override
  void display() {
    print("Forecast: ");
    if (_currentPressure > _lastPressure) {
      print("Improving weather on the way!");
    } else if (_currentPressure == _lastPressure) {
      print("More of the same");
    } else if (_currentPressure < _lastPressure) {
      print("Watch out for cooler, rainy weather");
    }
  }
}
