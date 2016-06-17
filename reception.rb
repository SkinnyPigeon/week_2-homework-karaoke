require 'pry-byebug'
require_relative 'rooms'
require_relative 'guests'

class Reception

  attr_reader(:bill, :drinks)

  def initialize
    @bill = bill
    @drinks = drinks
  end

end
