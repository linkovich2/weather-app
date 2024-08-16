# pulls weather report from external API
class WeatherReportGenerator
  attr_accessor :zip_code, :latitude, :longitude

  def self.generate(zip_code)
    self.new(zip_code).generate
  end

  def initialize(zip_code)
    @zip_code = zip_code
    geocode!
  end

  # pulls weather data for a zip code
  def generate
    @response ||= HTTParty.get(open_meteo_url)
  end

  # geocodes the zip code to get lat/long for use with the weather API
  def geocode!
    # potential improvement: failure state not handled
    response   = HTTParty.get(zipcodestack_url)["results"]["#{zip_code}"].first
    @latitude  = response["latitude"]
    @longitude = response["longitude"]
  end

  # returns url of weather API
  def open_meteo_url
    # potential improvement: time zone could/should be dynamic
    "https://api.open-meteo.com/v1/forecast?latitude=#{latitude}&longitude=#{longitude}&hourly=precipitation_probability,cloud_cover,temperature_120m&timezone=America%2FChicago"
  end

  # returns url of zip code reverse geocode API
  def zipcodestack_url
    "https://api.zipcodestack.com/v1/search?codes=#{zip_code}&country=us&apikey=#{Rails.application.credentials.dig(:zipcodestack_key)}"
  end
end
