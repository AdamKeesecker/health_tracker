require 'fitgem'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:fitbit]

  def update_with_fitbit_oauth(auth)
    auth_token = auth.credentials.token
    auth_secret = auth.credentials.secret
    self.token = auth_token
    self.uid = auth.uid
    self.secret = auth_secret
    self.save
  end

  def get_client
    Fitgem::Client.new(user_id: self.uid, consumer_key: "bac7a823979b4dddb95cd3cb265ab135", consumer_secret: "84ada8354c1043e9b68d3200047b611c", token: self.token, secret: self.secret)
  end
end
