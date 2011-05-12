class Role < ActiveRecord::Base
  acts_as_authorization_role

  def self.all_role_names
    %w( admin coordinator manager trapper )
  end
end
