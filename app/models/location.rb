class Location < ActiveRecord::Base
  has_many :jobs
  belongs_to :client
  geocoded_by :address_for_geocoder

  after_validation :fetch_coordinates

  def description
    client.try(:name).to_s + " " +
    [ addr1 + " " + addr2.to_s, city, zip ].join(", ").strip
  end

  alias :address_for_geocoder :description
end
