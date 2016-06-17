require_relative 'playlist'
require_relative 'guests'
require 'pry-byebug'
class Room

  attr_reader(:name)
  attr_accessor(:playlist)

  def initialize(name)
    @name = name
    @playlist = []
  end


end