require 'spec_helper'

describe Role do
  it "has a non-empty list of role names" do
    Role.all_role_names.length.should > 0
  end
  pending "add some examples to (or delete) #{__FILE__}"
end
