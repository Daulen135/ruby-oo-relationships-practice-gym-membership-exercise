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

  def lifter_name
    self.lifters.map {|lifter|lifter.name }
  end

  def lift_total
    var = self.lifters.map {|lifter|lifter.lift_total}
    var.sum 
  end


end

puts "gym"

