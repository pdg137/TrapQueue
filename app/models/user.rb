class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :confirmable, :lockable, :timeoutable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :roles

  def self.roles
    %w(admin coordinator manager trapper)
  end

  def roles
    User.roles.collect { |r| r if self.send("is_#{r}?") }.compact
  end

  def roles=(roles)
    roles.select! { |r| !r.blank? }
    User.roles.each { |r| self.send("is_#{r}=", false) }
    roles.each { |r| self.send("is_#{r}=", true) }
  end
end
