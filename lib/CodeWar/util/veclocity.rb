require './direction.rb'
module CodeWar
module Util
class Velocity
  def initialize(speed = 0, xDirection = CodeWar::Util::NIL_DIRECTION, yDirection = CodeWar::Util::NIL_DIRECTION)
    @speed = speed
    @directions = [xDirection, yDirection]
  end

  attr_accessor :speed
  attr_accessor :directions
end
end
end
