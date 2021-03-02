class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end



  def self.all
    @@all
  
  end

  def memberships
    Membership.all.select { |object| object.lifter == self }
  end

  def gyms
    memberships.map {|object| object.gym}
  end

  def self.average
   var =  self.all.map { |object| object.lift_total } 
   var = var.sum / @@all.length 
  end

  def total_cost
    var = memberships.map { |lifter| lifter.cost}
    var.sum
  end

  def new_membership(cost, gym)
    Membership.new(cost, self, gym)
  end

end

puts "lifter"

