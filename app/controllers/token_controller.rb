class TokenController < ApplicationController
  def edit
    user = User.get_token(request.env["omniauth.auth"])
    redirect_to :back
  end
end
