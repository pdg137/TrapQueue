class Location < ActiveRecord::Base
  attr_accessible :addr1, :addr2, :zip, :city, :name, :phone_number
	validate :validate_unique_location

	def validate_unique_location
        if changed?
		    l = Location.where(:addr1 => addr1, :addr2 => addr2, :city => city, :zip => zip, :name => name, :phone_number => phone_number).first
		    errors[:base] << "Address was not unique." unless l.nil?
        end
	end

end
