import 'package:observer_pattern/current_conditions_display.dart';
import 'package:observer_pattern/forecast_display.dart';
import 'package:observer_pattern/statistics_display.dart';
import 'package:observer_pattern/weather_data_subject.dart';

void main(List<String> arguments) {
  WeatherDataSubject weatherDataSubject = WeatherDataSubject();

  CurrentConditionsDisplay currentDisplay =
      CurrentConditionsDisplay(weatherDataSubject);
  StatisticsDisplay statisticsDisplay = StatisticsDisplay(weatherDataSubject);
  ForecastDisplay forecastDisplay = ForecastDisplay(weatherDataSubject);

  weatherDataSubject.setMeasurements(80, 65, 30.4);
  weatherDataSubject.setMeasurements(82, 70, 29.2);
  weatherDataSubject.setMeasurements(78, 90, 29.2);

  weatherDataSubject.removeObserver(forecastDisplay);
  weatherDataSubject.setMeasurements(62, 90, 28.1);
}
