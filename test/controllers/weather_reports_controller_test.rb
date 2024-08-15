require "test_helper"

class WeatherReportsControllerTest < ActionDispatch::IntegrationTest
  test "#index shows the weather report address form" do
    get weather_reports_url
    assert_response :success
  end

  test "#show shows the weather report for a given zip" do
    get weather_reports_url(78412)
    assert_response :success
  end

  test "#create parses the address for a zip code and redirects to #show" do
    post weather_reports_url, { params: { address: "1234 Avenue Lane, Cool City, State, 75081" } }
    assert_redirected_to weather_reports_url(75081)
  end
end
