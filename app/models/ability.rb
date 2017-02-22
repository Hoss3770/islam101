class Ability
  include CanCan::Ability

  def initialize(user)

      user ||= User.new # guest user (not logged in)
      can :see, Leson, level: { id: user.level_ids }
      # can :see, Level, user_id: user.id

  end
end
