require_relative '../util/velocity'
module CodeWar
	module Living
		class Creature
			def initialize(hp, atk, speed, type, key, x = 0, y = 0, velocity = CodeWar::Util::Velocity.new)
				@hp = hp
				@maxhp = hp
				@atkbns = atk
				@speed = speed
				@type = type
				@key = key
				@x = x
				@y = y
				@goTo = [false, @x, @y]
				@velocity = velocity
			end

			def attack(obj)
				if rand(0..1) == 0 then
					return false
				else
					atk = rand(1..4) + @atkbns
					obj.sethp(obj.hp - atk, @key)
				end
			end

			def sethp(arg, key)
				if key == @key then
					@hp = arg
				else
					return nil
				end
			end

			def move(amountX, amountY)
				@x += amountX
				@y += amountY
			end

			def go(x, y)
				@x = x
				@y = y
			end

			def go_to(x, y, speed = @speed)
				@goTo[0] = true
				@goTo[1] = x
				@goTo[2] = y
			end

			def tick(time = 0.1)
				x_distance = if @goTo[1] >= 0 then @goTo[1] - @x else @x - @goTo[1] end
				y_distance = if @goTo[2] >= 0 then @goTo[2] - @y else @y - @goTo[2] end
				distance = Math.sqrt(x_distance * x_distance + y_distance * y_distance);
				if distance != 0 then
					@x += x_distance * if @speed > x_distance then x_distance else @speed end
					@y += y_distance * if @speed > y_distance then y_distance else @speed end
				end
			end


			attr_reader :hp
			attr_reader :atkbns
			attr_reader :speed
			attr_reader :type
			attr_reader :x
			attr_reader :y
			attr_reader :maxhp
			attr_reader :velocity
		end
	end
end
