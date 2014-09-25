require 'fitgem'
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:fitbit]

  def update_with_fitbit_oauth(auth)
    puts "============================================="
    puts auth
    puts "============================================="
    auth_token = auth.credentials.token
    auth_secret = auth.credentials.secret
    self.token = auth_token
    self.uid = auth.uid
    self.secret = auth_secret
    self.save
  end

  def get_client
    Fitgem::Client.new(access_token: token, consumer_key: '34d51b630f8f4497995ad847f2de94db', consumer_secret: '22f950c07e2a446da3cbb1dcce710d03', token: self.token, secret: self.secret)
  end
end
