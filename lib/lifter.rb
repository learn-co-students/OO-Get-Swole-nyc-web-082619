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
    Membership.all.select{|membership|membership.lifter == self}
  end

  def gyms
    self.memberships.map{|membership|membership.gym}.uniq
  end

  def self.lift_totals
    self.all.map{|lifter|lifter.lift_total}
  end

  def self.average_lift_total
    self.lift_totals.reduce(:+)/self.all.length.to_f
  end

  def sign_up_to_new_gym(gym, cost)
    Membership.new(cost, gym, self)
  end
end
