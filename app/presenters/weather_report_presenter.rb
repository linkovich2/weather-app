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

  def cached_at
    weather_report[:cached_at].strftime("%l:%M %B %d, %Y")
  end
end
