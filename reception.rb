require 'pry-byebug'
require_relative 'rooms'
require_relative 'guests'

class Reception

  attr_reader(:bill, :drinks)

  def initialize
    @bill = bill
    @drinks = drinks
  end

  def welcome(name)
    if name.can_afford 
      add_guest(name)
    end
  end

end
