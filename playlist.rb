require_relative 'songs'
require 'pry-byebug'



class Playlist

  attr_accessor(:playlist)

  def initialize(songs)
    @songs = songs
    @playlist = playlist
  end

  def song_genre(name)

    result = @songs.find  { |song| song.name == name }

    return result.genre
  end

  def current_playlist
    @songs.length
  end


end

