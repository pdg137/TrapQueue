class Location < ActiveRecord::Base
  attr_accessible :addr1, :addr2, :zip, :city
end
