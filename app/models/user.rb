class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  acts_as_authorization_subject :association_name => :roles

  attr_accessible :email, :password, :password_confirmation, :remember_me
end
