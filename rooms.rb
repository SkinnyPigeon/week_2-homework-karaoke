class Room

  attr_reader(:name)
  attr_accessor(:playlist)

  def initialize(name)
    @name = name
    @playlist = []
  end



end