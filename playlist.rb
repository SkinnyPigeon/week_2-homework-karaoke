require_relative 'songs'

class Playlist

  attr_accessor(:playlist)

  def initialize(songs)
    @songs = songs
    @playlist = playlist
  end

  def default
    @songs.length
  end


end