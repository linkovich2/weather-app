require "test_helper"

class GetWeatherReportTest < ActiveSupport::TestCase
  zip = 90210

  setup do
    Rails.cache.clear
  end

  test "#process either uses the cached weather report or grabs a fresh one from the lib" do
    mock = Minitest::Mock.new
    fake_result = { "success": true }
    mock.expect(:generate, fake_result)
    mock.expect(:generate, fake_result) # two calls, apparently there is not a better way to do this, this makes me want rspec back

    WeatherReportGenerator.stub(:new, mock) do
      result = GetWeatherReport.process(zip)
      assert_instance_of WeatherReportPresenter, result
      assert_equal fake_result, result.weather_report
      assert_not result.cached?
      assert_not_nil Rails.cache.fetch(zip)
    end
  end

  test "self.process creates a new instance and calls #process on it" do
    mock = Minitest::Mock.new
    mock.expect :process, true

    GetWeatherReport.stub(:new, mock) do
      assert GetWeatherReport.process(zip)
    end
    
    mock.verify
  end
end
