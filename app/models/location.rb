class Location < ActiveRecord::Base
  has_many :jobs
  belongs_to :client

	validate :validate_unique_location

	def validate_unique_location
    if changed?
		  location = Location.where(:addr1 => addr1, :addr2 => addr2, :city => city, :zip => zip).first
		  errors[:base] << "Address was not unique." unless location.nil?
    end
	end

  def description
    client.try(:name).to_s + " " +
    [ addr1 + " " + addr2.to_s, city, zip ].join(", ").strip
  end
end
