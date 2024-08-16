ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "minitest/autorun"
require "webmock/minitest"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
    def meteo_report
      { "latitude": 34.0901, "longitude": -118.4065, "generationtime_ms": 0.9349584579467773, "utc_offset_seconds": -18000, "timezone": "America/Chicago", "timezone_abbreviation": "CDT", "elevation": 38.0, "hourly_units": { "time": "iso8601", "precipitation_probability": "%", "cloud_cover": "%", "temperature_120m": "°C" }, "hourly": { "time": [ "2024-08-15T00:00", "2024-08-15T01:00" ], "precipitation_probability": [ 18, 15 ], "cloud_cover": [ 74, 60 ], "temperature_120m": [ 21.4, 22.1 ] }, "current": { "apparent_temperature": 67.2 } }
    end
  end
end
