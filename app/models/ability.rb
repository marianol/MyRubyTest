class Ability
    include CanCan::Ability

    def initialize(user)
      
      user ||= User.new # guest user
      
      can :manage, :all if user.role == "admin"
      
      can :read, :all if user.role == "employee"
      
      can :assign_roles if user.role == "admin"
      
    end
      
end
