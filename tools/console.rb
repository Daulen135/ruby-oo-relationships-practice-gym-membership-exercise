# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'



hadi = Lifter.new("hadi", 200)
triston = Lifter.new("triston",400)
daulen = Lifter.new("daulen", 600)
johncena = Lifter.new("johncena", 250)

laf = Gym.new("lafitness")
lft = Gym.new("lifetime")
glg = Gym.new("goldsgym")
glsv = Gym.new("goldsilver")


m1 = Membership.new(100, hadi, laf)
m2 = Membership.new(80, triston, laf)
m3 = Membership.new(10, daulen, glsv)
m4 = Membership.new(50, johncena, glg)
m5 = Membership.new(300, daulen, laf )
m6 = Membership.new(240, johncena, lft)
m7 = Membership.new(810, hadi, glg)
m8 = Membership.new(652, triston, lft)

binding.pry

puts "Gains!"

