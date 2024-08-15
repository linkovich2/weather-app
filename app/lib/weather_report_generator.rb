class WeatherReportGenerator
  attr_accessor :zip_code, :latitude, :longitude

  def self.generate(zip_code)
    self.new(zip_code).generate
  end

  def initialize(zip_code)
    @zip_code = zip_code
    geocode!
  end

  def generate
    @response ||= HTTParty.get(open_meteo_url)
  end

  def geocode!
    # potential improvement: failure state not handled
    response   = HTTParty.get(zipcodestack_url)["results"]["#{zip_code}"].first
    @latitude  = response["latitude"]
    @longitude = response["longitude"]
  end

  def open_meteo_url
    # potential improvement: time zone could be dynamic
    "https://api.open-meteo.com/v1/forecast?latitude=#{latitude}&longitude=#{longitude}&hourly=precipitation_probability,cloud_cover,temperature_120m&timezone=America%2FChicago"
  end

  def zipcodestack_url
    "https://api.zipcodestack.com/v1/search?codes=#{zip_code}&country=us&apikey=#{Rails.application.credentials.dig(:zipcodestack_key)}"
  end
end