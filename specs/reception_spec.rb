require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../reception'
require_relative '../guests'
require 'pry-byebug'

class RoomsTest < MiniTest::Test

  def setup 
    @room1=Room.new("Nice 'n Sleezy", 2, 15)
    @room2=Room.new("Jim's Bassy Song Hole", 4, 25)

    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")
    @song3=Song.new("Slow Roast", "Immortal Jane", 1906, "Sleeze Mode 8")

    @guest1=Guest.new("Jonny Big-Tash", "Slow Roast", 100)
    @guest2=Guest.new("Stevie Winwood", "I'm Going To Kill Yo Mamma", 150)
    @guest3=Guest.new("The Entire Royal Philharmoic East Compton Rap Brigade's PA", "Deep Down In The Ole Pit", 10)
    @guest4=Guest.new("The Right Honarable Lt Hammy Cham Bum the 3rd MP OBE MBE", "Music Ain't No Thang", 50)

    @reception=Reception.new("Big Dave's Big Boys Karaoke Shack")

    @groups = [@guest1, @guest2, @guest4]

  end

  def test_add_rooms_to_reception
    @reception.add_rooms(@room1)
    assert_equal( 1, @reception.number_of_rooms)
  end   

  def test_welcome
    @reception.add_rooms(@room1)
    @reception.add_rooms(@room2)
    assert_equal( true, @reception.welcome(@guest1, @room1) )      
    assert_equal( false, @reception.welcome(@guest3, @room2) )
  end

  def test_guests_pay
    @reception.guest_pays_bill(@guest1, @room1)
    assert_equal(85, @guest1.cash)
  end

  def test_multiple_guests_check_in
    group = @reception.group_check_in(@groups)
    # @reception.group_check_in(@groups)
    assert_equal(3, group)
  end


end






