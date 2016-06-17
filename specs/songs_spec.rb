require 'minitest/autorun'
require 'minitest/rg'
require_relative '../songs'

class SongsTest < MiniTest::Test

  def setup
    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")
    @song3=Song.new("Slow Roast", "Immortal Jane", 1906, "Sleeze Mode 8")

  end

  def test_song_has_title
    assert_equal("Deep Down In The Ole Pit", @song1.name)
  end  

  def test_song_has_artist
    assert_equal("Fingers Jones-Steemabich", @song1.artist)
  end

  def test_song_has_year
    assert_equal(1984, @song1.year)
  end

  # def test_song_has_genre
  #   assert_equal("Smooth Mild Funkcore", @song1.genre)
  # end

  def test_song_genre
    track_style = @songs.song_genre("Slow Roast")
    assert_equal(:genre, song_genre)
  end
  # def test_pet_merlin_is_cat
  #    pet_type = @pet_shop.pet_type("Merlin")
  #    assert_equal(:cat, pet_type)
  # end


end