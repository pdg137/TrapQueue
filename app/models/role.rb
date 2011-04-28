class Role < ActiveRecord::Base
  acts_as_authorization_role

  def self.all_role_names
    ["admin", "coordinator", "manager", "trapper"]
  end
end
