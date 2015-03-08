module CodeWar
  module Util
    class Velocity
      def initialize(x_speed = 0, y_speed = 0)
        @x_speed = x_speed
        @y_speed = y_speed
      end

      attr_accessor :x_speed
      attr_accessor :y_speed
    end
  end
end
