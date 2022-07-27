package WeatherStation;

public class ForecastDisplay implements DisplayElement, Observer {
    private float beforePressure;
    private float afterPressure;

    private WeatherData weatherData;

    public ForecastDisplay(WeatherData weatherData) {
        this.weatherData = weatherData;
        this.weatherData.registerObserver(this);
    }

    public void update() {
        beforePressure = afterPressure;
        afterPressure = weatherData.getPressure();
        display();
    }

    public void display() {
        if (beforePressure < afterPressure) {
            System.out.println("기상 예보: 날씨가 좋아지고 있습니다.");
        } else if (beforePressure == afterPressure) {
            System.out.println("기상 예보: 지금과 비슷할 것 같습니다.");
        } else {
            System.out.println("기상 예보: 쌀쌀하며 비가 올 것 같습니다.");
        }
    }
}
