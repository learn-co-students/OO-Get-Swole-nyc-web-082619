# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

l1 = Lifter.new("Ruby", 34)
l2 = Lifter.new("Arnold", 154)
l3 = Lifter.new("Rocki", 122)
l4 = Lifter.new("Ben", 32)

gym1 = Gym.new("Yes")
gym2 = Gym.new("You can do it!")
gym3 = Gym.new("Lose weight")
gym4 = Gym.new("just LIFT")

m1 = Membership.new(1040, l1, gym1)
m2 = Membership.new(1007, l2, gym2)
m3 = Membership.new(106, l3, gym3)
m4 = Membership.new(1043, l4, gym4)
m5 = Membership.new(1080, l1, gym3)
m6 = Membership.new(1090, l2, gym4)


binding.pry

puts "Gains!"
