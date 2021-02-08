require_relative './plane.rb'

class Airport
  attr_reader :capacity
  
  DEFAULT_CAPACITY = 1

  def initialize(capacity = DEFAULT_CAPACITY)
    @quantity = []
    @capacity = capacity
    
  end

  def land(plane)
    fail 'The airport is full' if full?
    @quantity.push(plane)
  end

  def take_off(plane)
    return 'plane has taken off'
   

  end

  def full?
    return true if @quantity.length >= @capacity
  end

end


