class SessionsController < class Devise::SessionsController
  # after_action :user_id_to_cookies, only: :create

  # private

  # def user_id_to_cookies
  #   cookies[:current_user_id] = current_user.id
  # end
end
