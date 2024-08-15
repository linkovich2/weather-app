require "test_helper"

class ParseAddressForZipCodeTest < ActiveSupport::TestCase
  address = "1755 Broadway New York, NY 10019"

  test "#process takes the given address and returns the zip" do
    instance = ParseAddressForZipCode.new(address)
    assert_equal "10019", instance.process
  end

  test "self.process creates a new instance and calls #process on it" do
    mock = Minitest::Mock.new
    mock.expect :process, true

    ParseAddressForZipCode.stub(:new, mock) do
      assert ParseAddressForZipCode.process(address)
    end

    mock.verify
  end

  test "when no zip is found it should raise an error" do
    address = "1 Street, City, State"
    instance = ParseAddressForZipCode.new(address)
    
    assert_raises ParseAddressForZipCode::NoZipFoundError do
      ParseAddressForZipCode.process(address)
    end
  end
end
