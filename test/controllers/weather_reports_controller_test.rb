require "test_helper"

class WeatherReportsControllerTest < ActionDispatch::IntegrationTest
  test "#index shows the weather report address form" do
    get weather_reports_path
    assert_response :success
  end

  test "#show shows the weather report for a given zip" do
    mock = Minitest::Mock.new
    mock.expect(:process, WeatherReportPresenter.new(meteo_report.deep_stringify_keys))

    GetWeatherReport.stub(:new, mock) do
      get weather_report_path(78412)
      assert_response :success
    end
  end

  test "#create with a bad address redirects to index with flash" do
    post weather_reports_path, params: { address: "no zip here buddy" }
    assert_redirected_to weather_reports_path
    assert_equal WeatherReportsController::NO_ZIP_FOUND_MESSAGE, flash[:error]
  end

  test "#create parses the address for a zip code and redirects to #show" do
    post weather_reports_path, params: { address: "1234 Avenue Lane, Cool City, State, 75081" }
    assert_redirected_to weather_report_url(75081)
  end
end
