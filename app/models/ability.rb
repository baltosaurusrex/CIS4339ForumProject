class Ability
  include CanCan::Ability
  def initialize(user)
    #user ||= User.new # guest user (not logged in)
    alias_action :create, :read, :update, :destroy, to: :crud

    if user.present?
      can :read, Channel
      if user.BM?
        can :manage, [User, Channel, Post, Comment]
        #can :access, :rails_admin
        #can :dashboard
      elsif user.CM?
        can :read, :all
        cannot :update, [User, Channel, Post, Comment]
        cannot :create, [User, Channel, Post, Comment]
        cannot :delete, [User, Channel, Post, Comment]
      elsif user.user_role?
        can :manage, Post, user_id: user.id
        can :manage, Comment, user_id: user.id
        can :update, User
      end
    end
  end
end
