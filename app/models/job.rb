# Statuses:
#  - followup
#  - open
#  - in_progress
#  - closed
#  - archived
class Job < ActiveRecord::Base
  belongs_to :location
end
