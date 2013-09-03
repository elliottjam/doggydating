class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      can :read, Dog

      can :manage, Dog do |dog|
        dog.user == user
      end

    else
      # put permissions here for non-logged-in users (if you want them to do anything :-)
    end
  end
end


