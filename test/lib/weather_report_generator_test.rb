require "test_helper"

class WeatherReportGeneratorTest < ActiveSupport::TestCase
  zip = 90210

  zip_response = { "query": { "codes": [ "90210" ], "country": "us" }, "results": { "#{zip}": [ { "postal_code": "#{zip}", "country_code": "US", "latitude": 34.0901, "longitude": -118.4065, "city": "Beverly Hills", "state": "California", "city_en": "Beverly Hills", "state_en": "California", "state_code": "CA" } ] } }

  test "self.generate creates a new instance and calls #generate" do
    mock = Minitest::Mock.new
    mock.expect(:generate, nil)
    WeatherReportGenerator.stub(:new, mock) do
      result = WeatherReportGenerator.generate(zip)
      assert_nil result # we're just testing that generate got called at all, generate is tested below
    end

    mock.verify
  end

  test "#generate pulls a new weather report from open-meteo's API" do
    stub_request(:get, /open-meteo/).to_return_json(status: 200, body: meteo_report)
    stub_request(:get, /zipcodestack/).to_return_json(status: 200, body: zip_response)

    instance = WeatherReportGenerator.new(90210)
    result = instance.generate

    assert_equal instance.latitude, result["latitude"]
    assert_equal instance.longitude, result["longitude"]
  end

  test "#geocode! fills out the latitude / longitude" do
    stub_request(:get, /zipcodestack/).to_return_json(status: 200, body: zip_response)
    instance = WeatherReportGenerator.new(90210)

    assert_equal meteo_report[:latitude], instance.latitude
    assert_equal meteo_report[:longitude], instance.longitude
  end
end
