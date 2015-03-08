require_relative 'lib/loader'
creature = CodeWar::Living::Creature.new(10, 10, 10, 'tester', 'blarghwaffl')
creature.go_to(1, 1)
p creature.velocity
creature.tick
p creature.velocity
creature.tick

p creature.x
p creature.y

if creature.x != 1 or creature.y != 1
  raise "GoTo does not work with same x/y values"
end

creature.go_to(1, 2)

creature.tick
creature.tick
p creature.velocity
creature.tick
p creature.x
p creature.y
p creature.velocity

if creature.x != 1 or creature.y != 2
  raise "GoTo does not work with different x/y values"
end

a_creature = CodeWar::Living::Creature.new(10, 10, 10, 'tester1', 'blarghwaffl1')
a_creature.go_to -2, -2
4.times do creature.tick end
p creature.x
p creature.y
p creature.velocity
if creature.x != -2 or creature.y != -2
  raise "GoTo does not work with negatives"
end
# TODO: Yell at Striking for ugly code
