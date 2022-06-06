import 'package:observer_pattern/display.dart';
import 'package:observer_pattern/observer.dart';
import 'package:observer_pattern/weather_data_subject.dart';

class StatisticsDisplay implements Observer, Display {
  double maxTemp = 0.0;
  double minTemp = 200;
  double tempSum = 0.0;
  int numReadings = 0;
  late WeatherDataSubject _weatherDataSubject;

  StatisticsDisplay(WeatherDataSubject weatherData) {
    _weatherDataSubject = weatherData;
    _weatherDataSubject.registerObserver(this);
  }

  @override
  void update(double temp, double humidity, double pressure) {
    tempSum += temp;
    numReadings++;

    if (temp > maxTemp) {
      maxTemp = temp;
    }

    if (temp < minTemp) {
      minTemp = temp;
    }

    display();
  }

  @override
  void display() {
    double result = tempSum / numReadings;
    print("Avg/Max/Min temperature = $result / $maxTemp / $minTemp");
  }
}
