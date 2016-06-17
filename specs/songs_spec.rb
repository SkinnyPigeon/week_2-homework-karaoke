require 'minitest/autorun'
require 'minitest/rg'
require_relative '../songs'

class SongsTest < MiniTest::Test

  def setup
    @song=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
  end

  def test_song_has_title
    assert_equal("Deep Down In The Ole Pit", @song.name)
  end  

  def test_song_has_artist
    assert_equal("Fingers Jones-Steemabich", @song.artist)
  end

  def test_song_has_year
    assert_equal(1984, @song.year)
  end

  def test_song_has_genre
    assert_equal("Smooth Mild Funkcore", @song.genre)
  end


end