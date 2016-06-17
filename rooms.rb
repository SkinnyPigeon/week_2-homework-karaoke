class Room

  attr_reader(:name)
  attr_accessor(:playlist)

  def initalize(name, playlist)
    @name = name
    @playlist = playlist
  end

end