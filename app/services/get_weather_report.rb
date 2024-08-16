# handles getting the weather report for a given zip code either from the API or from cache
class GetWeatherReport
  attr_accessor :zip_code

  def self.process(zip_code)
    self.new(zip_code).process
  end

  def initialize(zip_code)
    @zip_code = zip_code
  end

  # handles caching of weather responses
  def process
    result = Rails.cache.read(zip_code)
    unless result.present?
      result = WeatherReportGenerator.generate(zip_code)
      cached_result = result.to_h.merge({ cached_at: DateTime.now })
      Rails.cache.write(zip_code, cached_result, expires_in: 30.minutes)
    end

    WeatherReportPresenter.new result
  end
end
