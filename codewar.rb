Dir[Dir.pwd + "/lib/CodeWar/util/*.rb"].each { |f| require f }
Dir[Dir.pwd + "/lib/CodeWar/living/*.rb"].each { |f| require f }
creature = CodeWar::Living::Creature.new()
creature.goTo(1, 2)
creature.tick
creature.tick

if creature.x != 1 || creature.y != 1
  raise "GoTo does not work"
end
