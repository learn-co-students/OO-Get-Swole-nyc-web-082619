# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

joe = Lifter.new("Joe", 15)
mike = Lifter.new("Mike", 3)
will = Lifter.new("Will", 6)
fred = Lifter.new("fred", 7)

g1 = Gym.new("Gymbo")
g2 = Gym.new("Slowgo")

m1 = Membership.new(50, g1, joe)
m2 = Membership.new(50, g2, joe)
m3 = Membership.new(50, g1, will)
m4 = Membership.new(50, g1, mike)
m5 = Membership.new(50, g2, fred)



binding.pry

puts "Gains!"
