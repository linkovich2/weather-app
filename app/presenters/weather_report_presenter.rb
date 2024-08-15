class WeatherReportPresenter
  attr_accessor :weather_report

  def initialize(weather_report)
    @weather_report ||= weather_report
  end
end