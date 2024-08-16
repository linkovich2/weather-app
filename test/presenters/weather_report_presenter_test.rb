require "test_helper"

class WeatherReportPresenterTest < ActiveSupport::TestCase
  test "#cached? returns true when the report has a cached_at" do
    instance = WeatherReportPresenter.new(meteo_report.deep_stringify_keys)
    assert_not instance.cached?
  end

  test "#weather_blocks creates blocks of weather info for the report" do
    instance = WeatherReportPresenter.new(meteo_report.deep_stringify_keys)
    assert_equal "18%", instance.weather_blocks.first[:precipitation_probability]
  end

  test "#cloud_coverage gets human readable cloud coverage strings" do
    instance = WeatherReportPresenter.new(meteo_report.deep_stringify_keys)
    assert_equal "Partly Cloudy", instance.cloud_coverage(0)
  end

  test "#high returns highest temperature" do
    instance = WeatherReportPresenter.new(meteo_report.deep_stringify_keys)
    assert_equal 22.1, instance.high
  end

  test "#low returns lowest temperature" do
    instance = WeatherReportPresenter.new(meteo_report.deep_stringify_keys)
    assert_equal 21.4, instance.low
  end

  test "#current returns current temperature" do
    instance = WeatherReportPresenter.new(meteo_report.deep_stringify_keys)
    assert_equal 67.2, instance.current
  end
end
