class Room

  attr_reader(:name)
  attr_accessor(:playlist)

  def initialize(name, playlist)
    @name = name
    @playlist = playlist
  end

end