class Client < ActiveRecord::Base
  has_many :locations

  validates_presence_of :name

  default_scope order(:name)

  def self.search(query)
    where("name LIKE ? OR phone_number LIKE ?", "%#{query}%", "%#{query}%")
  end
end
