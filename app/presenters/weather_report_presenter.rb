# presentation layer for weather reports
class WeatherReportPresenter
  attr_accessor :weather_report

  def initialize(weather_report)
    @weather_report ||= weather_report
  end

  # returns whether the report is from cache
  def cached?
    weather_report.has_key?(:cached_at)
  end

  # gets a hash of weather information for a given index
  def weather_blocks
    @weather_blocks ||= Array.new.tap do |arr|
      weather_report["hourly"]["time"].each_with_index do |time, index|
        arr << {
          time: DateTime.parse(time).strftime("%_m/%d %l:%M%P"),
          cloud_coverage: cloud_coverage(index),
          precipitation_probability: "#{weather_report["hourly"]["precipitation_probability"][index]}%",
          temperature: "#{weather_report["hourly"]["temperature_120m"][index]}°f"
        }
      end
    end
  end

  # gets human-readable cloud coverage for a given index
  def cloud_coverage(index)
    coverage = weather_report["hourly"]["cloud_cover"][index]
    if coverage > 80
      "Cloudy"
    elsif coverage > 40
      "Partly Cloudy"
    elsif coverage > 10
      "Some Clouds"
    else
      "Clear Skies"
    end
  end

  # returns the highest temperature in the set
  def high
    weather_report["hourly"]["temperature_120m"].max
  end

  # returns the lowest temperature in the set
  def low
    weather_report["hourly"]["temperature_120m"].min
  end

  # returns current temperature
  def current
    weather_report["current"]["apparent_temperature"]
  end

  # returns human readable time of caching
  def cached_at
    weather_report[:cached_at].strftime("%l:%M%P %B %d, %Y Central Time")
  end
end
