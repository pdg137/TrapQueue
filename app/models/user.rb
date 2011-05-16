class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  attr_accessible :email, :password, :password_confirmation, :remember_me

  def self.roles
    %w(admin coordinator manager trapper)
  end
end
