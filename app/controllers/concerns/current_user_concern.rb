module CurrentUserConcern
  extend ActiveSupport::Concern

  included do 
    before_action :current_user
  end

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Dude",
                  first_name: "Dude",
                  last_name: "Dude",
                  email: "guest@user.com"
                  )
  end
end

# Over writing current_user method by Devise, 'super' lets the original method still be available IF there is a current user logged in, ELSE will user guest user