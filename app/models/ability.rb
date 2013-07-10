class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :Administrator
      can :manage, :all
    elsif user.role? :TeamMaster
          can :manage, User
          can :manage, Selection
    end
    if user.role? :Team
        can :manage, Selection
        can :manage, Step
    end
  end
end
