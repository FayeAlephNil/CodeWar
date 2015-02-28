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
				@velocity.speed = if x < speed || y < speed then y < x ? y : x else speed end
				@goTo[1] = x
				@goTo[2] = y

				xDiff = x - @x
				yDiff = y - @y
				if xDiff < 0
					@velocity.directions[0] = CodeWar::Util::LEFT
					if @x - @goTo[1] < 0 then @velocity.speed = @goTo[1] * -1 end
				elsif xDiff > 0
					@velocity.directions[0] = CodeWar::Util::RIGHT
					if @x - @goTo[1] > 0 then @velocity.speed = @goTo[1] end
				end

				if yDiff > 0
					@velocity.directions[1] = CodeWar::Util::UP
					if @y - @goTo[2] > 0 then @velocity.speed = @goTo[2] end
				elsif yDiff < 0
					@velocity.directions[1] = CodeWar::Util::DOWN
					if @y - @goTo[2] < 0 then @velocity.speed = @goTo[2] end
				end
			end

			def useVelocity(velocity = @velocity)
				if velocity.directions[0] == CodeWar::Util::RIGHT
					@x += velocity.speed
				elsif velocity.directions[0] == CodeWar::Util::LEFT
					@x -= velocity.speed
				end

				if velocity.directions[1] == CodeWar::Util::UP
					@y += velocity.speed
				elsif velocity.directions[1] == CodeWar::Util::DOWN
					@y -= velocity.speed
				end
			end

			def tick(time = 0.1)
				useVelocity()
				if @goTo[1] == @x && @goTo[2] == @y
					@goTo[0] = false
				end

				if !@goTo[0]
					@velocity = CodeWar::Util::Velocity.new # STRIKING YOU DON'T NEED THE PARENTHESES
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
