class Job < ActiveRecord::Base
  belongs_to :location

  STATUSES = %w(followup open in_progress closed archived)

  STATUSES.each do |status|
    scope status.to_sym, where(:status => status)
  end
end
