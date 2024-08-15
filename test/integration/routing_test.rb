require "test_helper"

class RoutingTest < ActionDispatch::IntegrationTest
  test "weather report routes generate" do
    assert_generates "/weather_reports", controller: "weather_reports", action: "index"
    assert_generates "/weather_reports/78412", controller: "weather_reports", action: "show", id: "78412"
    assert_generates "/weather_reports", controller: "weather_reports", action: "create"
  end
end
