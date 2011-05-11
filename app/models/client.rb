class Client < ActiveRecord::Base
  has_many :locations

  # TODO: enforce a particular format of the phone_number field in the database
  # (validates_format_of)
end
