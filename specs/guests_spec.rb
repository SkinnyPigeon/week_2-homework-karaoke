require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guests'

class GuestTest < MiniTest::Test

  def setup
    @guest1=Guest.new("Joey-Joe-Joe-Joe-Joe-Shabadoo")
    @guest2=Guest.new("Likey McSmile-Face")
  end

  def test_guests_have_names
    assert_equal("Joey-Joe-Joe-Joe-Joe-Shabadoo", @guest1.name)
  end


end