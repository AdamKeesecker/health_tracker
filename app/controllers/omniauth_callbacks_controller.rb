class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def fitbit
    current_user.update_with_fitbit_oauth(request.env["omniauth.auth"])
    sign_in_and_redirect current_user, :event => :authentication
    set_flash_message(:notice, :success, :kind => "Fitbit") if is_navigational_format?
  end
end
