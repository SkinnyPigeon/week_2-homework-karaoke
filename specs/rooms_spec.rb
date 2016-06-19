require 'minitest/autorun'
require 'minitest/rg'
require_relative '../rooms'
require_relative '../songs'
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
    @guest3=Guest.new("The Entire Royal Philharmoic East Compton Rap Brigade's PA", "Deep Down In The Ole Pit",15 )
    @guest4=Guest.new("The Right Honarable Lt Hammy Cham Bum the 3rd MP OBE MBE", "Music Ain't No Thang", 50)

    @groups = [@guest1, @guest2, @guest4]

  end

  def test_room_has_name
    assert_equal("Nice 'n Sleezy", @room1.name)
  end

  def test_room_has_playlist
    assert_equal([], @room1.playlist)
  end

  def test_add_song_to_room
    @room1.add_song(@song1)
    assert_equal(1, @room1.number_of_songs)
  end

  def test_add_guests_to_room
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    assert_equal(2,@room1.number_of_guests)
  end

  def test_guest_can_check_in_groups
    @room2.form_groups(@groups)
    assert_equal(3, @room2.number_in_group)
  end

  def test_remove_guest_from_room
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest1)
    assert_equal(1, @room1.number_of_guests)
  end

  def test_cannot_exceed_capacity
    @room1.add_guest(@guest1)
    @room1.add_guest(@guest3)
    @room1.add_guest(@guest2)
    assert_equal(2, @room1.number_of_guests)
  end

  def test_guest_can_buy_beer
    @guest1.pays(@guest1, @room1.beer)
    assert_equal(96.5, @guest1.cash)
  end


end










