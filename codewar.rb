#Dir[Dir.pwd + "/lib/CodeWar/util/*.rb"].each { |f| require_relative "lib/CodeWar/util/#{f}" }
#Dir[Dir.pwd + "/lib/CodeWar/living/*.rb"].each { |f| require_relative "lib/CodeWar/living/#{f}" }
require_relative "lib/CodeWar/util/velocity"
#require_relative "lib/CodeWar/util/direction"
require_relative "lib/CodeWar/living/self"
require_relative "lib/CodeWar/living/player"
require_relative "lib/CodeWar/living/creature"
require_relative "lib/CodeWar/living/enemy"
creature = CodeWar::Living::Creature.new(10, 10, 10, 'tester', 'blarghwaffl')
creature.go_to(1, 2)
p creature.velocity
creature.tick
p creature.velocity
creature.tick

p creature.x
p creature.y

if creature.x != 1 || creature.y != 1 then raise "GoTo does not work" end

creature.tick
p creature.velocity
creature.tick
p creature.x
p creature.y
p creature.velocity

if creature.x != 1 || creature.y != 2 then raise "GoTo does not work" end
