module CodeWar
module Living
class Creature
	def initialize(hp, atk, speed, type, key, x, y)
		@hp = hp
		@maxhp = hp
		@atkbns = atk
		@speed = speed
		@type = type
		@key = key
		@x = x
		@y = y
		@goToToggle = [false, 0, 0, 0];
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

	def goTo(x, y, speed = @speed)
		@goTo = [true, x, y, speed]
	end

	def goDirection(x, y, speed)
		xDiff = x - @x
		yDiff = y - @y

		toX = @x + speed
		toY = @y + speed

		if (xDiff == 0)
			toX = @x
		end

		if (xDiff < 0)
			toX *= -1
		end

		if (yDiff == 0)
			toY = @y
		end

		if (yDiff < 0)
			toX *= -1
		end

		go(toX, toY);

	end

	def tick(time)
		if @goTo[0]
			goDirection(@goTo[1], @goTo[2], @goTo[3])
		end
	end


	attr_accessor :hp
	attr_accessor :atkbns
	attr_accessor :speed
	attr_accessor :type
	attr_accessor :x
	attr_accessor :y
	attr_accessor :maxhp
end
end
end
