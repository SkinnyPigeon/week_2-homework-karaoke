require 'minitest/autorun'
require 'minitest/rg'
require 'pry-byebug'
require_relative '../songs'
require_relative '../playlist'

class SongsTest < MiniTest::Test

  def setup
    @song1=Song.new("Deep Down In The Ole Pit", "Fingers Jones-Steemabich", 1984, "Smooth Mild Funkcore")
    @song2=Song.new("I'm Going To Kill Yo Mamma", "Iain and The Steamtrain", 2016, "Rocket Houselite")
    @song3=Song.new("Slow Roast", "Immortal Jane", 1906, "Sleeze Mode 8")

    songs = [@song1, @song2]
    @playlist=Playlist.new(songs)
  end

  def test_playlist_creation
    assert_equal(2, @playlist.current_playlist)
  end

  def test_add_song_to_playlist
    assert_equal(3, @playlist.add_to_playlist(@song3.name))
  end

end