class Gym
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select{|membership|membership.gym == self}
  end

  def lifters
    self.memberships.map{|membership|membership.lifter}.uniq
  end

  def lifter_names
    self.lifters.collect{|lifter|lifter.name}
  end

  def total_lifts
    self.lifters.map{|lifter|lifter.lift_total}.reduce(:+)
  end
end
