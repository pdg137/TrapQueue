class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is_admin?
      can :manage, :all
    elsif user.is_coordinator?
      can :manage, Job
      can :manage, Client
      can :manage, User
    elsif user.is_manager?
      can :read, Job
    end
  end
end
