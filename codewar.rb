#Dir[Dir.pwd + "/lib/CodeWar/util/*.rb"].each { |f| require_relative "lib/CodeWar/util/#{f}" }
#Dir[Dir.pwd + "/lib/CodeWar/living/*.rb"].each { |f| require_relative "lib/CodeWar/living/#{f}" }
require_relative "lib/CodeWar/util/veclocity"
require_relative "lib/CodeWar/util/direction"
require_relative "lib/CodeWar/living/self"
require_relative "lib/CodeWar/util/player"
require_relative "lib/CodeWar/util/creature"
require_relative "lib/CodeWar/util/enemy"
creature = CodeWar::Livsing::Creature.new()
creature.goTo(1, 2)
creature.tick
creature.tick

if creature.x != 1 || creature.y != 1
  raise "GoTo does not work"
end
