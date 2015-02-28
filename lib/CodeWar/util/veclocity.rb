module CodeWar
  module Util
    NIL_DIRECTION = -1
    UP = 0
    RIGHT = 1
    DOWN = 2
    LEFT = 3
    class Velocity
      def initialize(speed = 0, xDirection = $NIL_DIRECTION, yDirection = $NIL_DIRECTION)
        @speed = speed
        @directions = [xDirection, yDirection]
      end

      attr_accessor :speed
      attr_accessor :directions
    end
  end
end
