import 'package:observer_pattern/display.dart';
import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/weather_data_subject.dart';

class CurrentConditionsDisplay implements Observer, Display {
  double? temp;
  double? humidity;
  double? pressure;
  late WeatherDataSubject _weatherDataSubject;

  CurrentConditionsDisplay(WeatherDataSubject weatherDataSubject) {
    _weatherDataSubject = weatherDataSubject;
    _weatherDataSubject.registerObserver(this);
  }
  @override
  void display() {
    if (temp == null && humidity == null && pressure == null) {
      print("no data");
    }
    print(
        "Temprature is $temp and Humidity is $humidity and Pressure is $pressure");
  }

  @override
  void update(double temp, double humidity, double pressure) {
    this.temp = temp;
    this.humidity = humidity;
    this.pressure = pressure;
    display();
  }
}
