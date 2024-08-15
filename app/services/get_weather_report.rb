class GetWeatherReport
  attr_accessor :zip_code

  def self.process(zip_code)
    self.new(zip_code).process
  end

  def initialize(zip_code)
    @zip_code = zip_code
  end

  # handle caching of weather responses
  # this is unfortunately preferable to `cache_action` or `cache_page` in the controller due to 
  # a lack of ability to see whether those results are cached for display purposes
  # (at least idiomatically)
  def process
    result = Rails.cache.read(zip_code)
    unless result.present?
      result = weather_report
      cached_result = weather_report + { cached_at: DateTime.now }
      Rails.cache.write(zip_code, cached_result, expires_in: 30.minutes)
    end

    result
  end

  private

  def weather_report
    # actually do the call to the weather API
  end
end