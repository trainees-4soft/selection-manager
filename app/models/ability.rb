class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :Administrator
      can :manage, :all
    elsif user.role? :Team
      can :manage, Selection
      can :manage, Step
      can :manage, User
    else 
      can :read, :all
    end
  end
end
