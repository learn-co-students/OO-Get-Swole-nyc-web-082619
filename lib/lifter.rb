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
    Membership.all.select {|membership| membership.lifter == self}
  end 

  def gyms
    memberships.map {|membership| membership.lifter}
  end

  def self.average_lift
    total_lift_amount = self.all.inject(0) {|sum, lifter| sum + lifter.lift_total}
    total_lifters = self.all.count
    percent = (total_lift_amount / total_lifters)*100
  end

  def total_cost
    memberships.inject(0) {|sum, membership| sum + membership.cost}
  end 

  def sign_in(gym, cost)
    Membership.new(cost, self, gym)
  end 

end
