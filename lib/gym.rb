class Gym
  attr_reader :name
  @@all=[]
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def membership
    Membership.all.select do |m|
    m.gym==self
    end
  end

  def lifters
    self.membership.map do|l|
      l.lifter
    end
  end
end

puts "gym"
