require 'test_helper'

class ManufacturerTest < ActiveSupport::TestCase

  test "should not save manufacturer without name" do
    manufacturer = Manufacturer.new
    assert_not manufacturer.save
  end
end
