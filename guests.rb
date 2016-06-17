class Guest

  attr_reader(:name, :favourite_song)

  def initialize(name, favourite_song)
    @name = name
    @favourite_song = favourite_song
  end

  def fave_song(song)
    if @favourite_song = song 
      return "Oh my God I love this ooooooonnnnnnnnneeee"
    end
  end 

end