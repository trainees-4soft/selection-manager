class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :administrator_master
      can :manage, :all
    elsif user.role? :Team_operator
      can :manage, Post
    else 
      can :read, :all
    end
  end
end
