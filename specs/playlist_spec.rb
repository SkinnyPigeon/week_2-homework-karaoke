require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../songs'
require_relative '../playlist'

class SongsTest < MiniTest::Test

  def setup
    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")

    songs = [@song1, @song2]
    @playlist=Playlist.new(songs)
  end

  def test_playlist_creation
    binding.pry
    assert_equal(2, @playlist.default)
  end

end