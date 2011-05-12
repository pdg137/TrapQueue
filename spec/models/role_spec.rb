require 'spec_helper'

describe Role do
  it "has a non-empty list of role names" do
    Role.all_role_names.length.should > 0
  end

  %w( admin coordinator manager trapper ).each do |role|
    it "has the role '#{role}'" do
      Role.all_role_names.should include role
    end
  end
end
