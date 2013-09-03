class Ability
  include CanCan::Ability

#   def initialize(user)
#     user||=User.new
#     if user.role? :admin
#         can :manage, :all
#     else
#         can :read, User
#     end
#   end
# end

  def initialize(user)
    user ||= User.new # guest user

    if user.role? :admin
      can :manage, :all
    else
    can :read, :all
  end
end
