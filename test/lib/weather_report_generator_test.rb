require "test_helper"

class WeatherReportGeneratorTest < ActiveSupport::TestCase
  zip            = 90210
  latitude       = 34.0901
  longitude      = -118.4065

  meteo_response = { "latitude": latitude, "longitude": longitude, "generationtime_ms": 0.9349584579467773, "utc_offset_seconds": -18000, "timezone": "America/Chicago", "timezone_abbreviation": "CDT", "elevation": 38.0, "hourly_units": { "time": "iso8601", "precipitation_probability": "%", "cloud_cover": "%", "temperature_120m": "°C" }, "hourly": { "time": [ "2024-08-15T00:00" ], "precipitation_probability": [ 18 ], "cloud_cover": [ 74 ], "temperature_120m": [ 21.4 ] } }

  zip_response   = { "query": { "codes": [ "90210" ], "country": "us" }, "results": { "#{zip}": [ { "postal_code": "#{zip}", "country_code": "US", "latitude": latitude, "longitude": longitude, "city": "Beverly Hills", "state": "California", "city_en": "Beverly Hills", "state_en": "California", "state_code": "CA" } ] } }

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
    stub_request(:get, /open-meteo/).to_return_json(status: 200, body: meteo_response)
    stub_request(:get, /zipcodestack/).to_return_json(status: 200, body: zip_response)

    instance = WeatherReportGenerator.new(90210)
    result = instance.generate

    assert_equal instance.latitude, result["latitude"]
    assert_equal instance.longitude, result["longitude"]
  end

  test "#geocode! fills out the latitude / longitude" do
    stub_request(:get, /zipcodestack/).to_return_json(status: 200, body: zip_response)
    instance = WeatherReportGenerator.new(90210)

    assert_equal latitude, instance.latitude
    assert_equal longitude, instance.longitude
  end
end
