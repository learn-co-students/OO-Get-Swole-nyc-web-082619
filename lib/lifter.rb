class Lifter
  attr_reader :name, :lift_total

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
  end
  
  def self.all 
    Membership.all.map { |membership| membership.lifter }
  end
  
  def myMemberships
    Membership.all.select { |membership| membership.lifter == self }
  end
  
  def myGyms
    self.myMemberships.map { |membership| membership.gym }
  end
  
  def avgLiftTotal
    liftTotal = 0
    totalLifter = self.class.all.count
    self.class.all.each { |lifter| liftTotal += lifter.lift_total }
    avgLift = liftTotal.to_f/totalLifter.to_f
  end
  
  def totalGymCost
    totalCost = 0 
    self.myMemberships.each { |membership| totalCost += membership.cost }
    totalCost
  end
  
  def signupGym(gym,cost)
    Membership.new(cost,gym,self)
  end
end
