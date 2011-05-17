class Bid < ActiveRecord::Base
  include Workflow

  validates_inclusion_of :status, :in => %w(new accepted declined)

  workflow do
    state :new
    state :declined
    state :accepted
  end
end
