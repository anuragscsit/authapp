class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :Admin
      can :manage, Company
    else
      can :read, :all
    end 
  end
end
