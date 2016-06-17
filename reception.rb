require 'pry-byebug'
require_relative 'rooms'
require_relative 'guests'

class Reception

  attr_reader(:bill, :drinks, :rooms)

  def initialize(name)
    @name = name
    @bill = bill
    @drinks = drinks
    @rooms = []
  end

  def add_rooms(room)
    @rooms << room
  end

  def number_of_rooms
    @rooms.length
  end 

  def welcome(name, room)
    if name.can_afford(room) == true
      room.add_guest(name)
      return true
    end
      return false
  end

  def guest_pays_bill(guest, room)
    if welcome(guest, room) == true
      guest.pays(guest.cash, room.price)   
    end
  end

end








