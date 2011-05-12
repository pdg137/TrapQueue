require 'spec_helper'

describe Job do
  it { should belong_to(:location) }
end
