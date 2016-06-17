require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'

class RoomsTest < MiniTest::Test

  def setup 
    @room=Room.new("Nice 'n Sleezy", "Smooth Jazz-Grime Fusion")
  end

  def test_room_has_name
    assert_equal("Nice 'n Sleezy", @room.name)
  end

end