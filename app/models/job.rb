# Statuses:
#  - followup
#  - open
#  - in_progress
#  - closed
#  - archived
class Job < ActiveRecord::Base
  belongs_to :location
  
  scope :available, where(:status => ["open", "closed", "in_progress", "followup"])
end
