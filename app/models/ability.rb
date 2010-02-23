class Ability
  include CanCan::Ability

  def initialize(user)
    can [:create, :read], Scrappy
    can [:update, :destroy], Scrappy do |scrappy|
      scrappy.creator == user
    end
  end
end
