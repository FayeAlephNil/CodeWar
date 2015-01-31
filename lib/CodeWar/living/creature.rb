module CodeWar
module Living
class Creature
	def initialize(hp, atk, type, key)
		@hp = hp
		@maxhp = hp
		@atkbns = atk
		@type = type
		@key = key
	end
	def attack(obj)
		if rand(0..1) == 0 then
			return false
		else
			atk = rand(1..4) + @atkbns
			obj.sethp(obj.hp - atk, @key)
		end
	end
	def hp()
		return @hp
	end
	def sethp(arg, key)
		if key == @key then
			@hp = arg
		else
			return nil
		end
	end
end
end
end