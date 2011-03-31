class Location < ActiveRecord::Base
  has_many :jobs
  belongs_to :client
  attr_accessible :addr1, :addr2, :zip, :city
	validate :validate_unique_location

	def validate_unique_location
        if changed?
		    l = Location.where(:addr1 => addr1, :addr2 => addr2, :city => city, :zip => zip).first
		    errors[:base] << "Address was not unique." unless l.nil?
        end
	end

end
