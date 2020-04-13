module CurrentUserConcern
  extend ActiveSupport::Concern

  included do 
    before_action :current_user
  end

  def current_user
    super || guest_user
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Dude"
    guest.first_name = "Dude"
    guest.last_name = "Dude"
    guest.email = "guest@user.com"
    guest # returns full guest object, otherwise only email would be returned
  end
end

# Over writing current_user method by Devise, 'super' lets the original method still be available IF there is a current user logged in, ELSE will user guest user