package WeatherStation;

public class StatisticsDisplay implements DisplayElement, Observer {
    private float average;
    private float maximum;
    private float minimum = 200.0f;
    private int idx;
    private WeatherData weatherData;

    public StatisticsDisplay(WeatherData weatherData) {
        this.weatherData = weatherData;
        this.weatherData.registerObserver(this);
    }

    public void update() {
        float temperature = weatherData.getTemperature();

        if (temperature > maximum) {
            maximum = temperature;
        }

        if (temperature < minimum) {
            minimum = temperature;
        }

        average = (average*idx + temperature) / (idx+1);

        idx++;

        display();
    }

    public void display() {
        System.out.println("평균/최고/최저 온도 : "+average+"/"+maximum+"/"+minimum);
    }
}
