# Parses given addesses for zip codes
class ParseAddressForZipCode
  class NoZipFoundError < Exception; end

  attr_accessor :address

  def self.process(address)
    self.new(address).process
  end

  def initialize(address)
    @address = address
  end

  # finds a zip code in any address string (may only work for US and Canadian zip codes)
  def process
    regex = /^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$/
    return regex.match(address)[0] if regex.match?(address)
    raise NoZipFoundError
  end
end
