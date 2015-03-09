module CodeWar
  TICK_INTERVAL = 0.1
  class Game
    def initialize
      @keys = Hash.new
      @objs
    end
    def add_key(obj, key)
      @keys[@keys.length + 1] = key
      @obj[@obj.length + 1] = obj
    end
    def tick
      @obj.each_pair do |key, obj|
        # TODO: Make it do stuff
      end
    end
  end
end
