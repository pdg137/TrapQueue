class Client < ActiveRecord::Base
  has_many :locations

  validates_presence_of :name

  default_scope order(:name)

  def self.search(query)
    # Client.find_all_by_phone_number(params[:phone_number].gsub(/[^0-9]/,''))
    # Client.find(:all, :conditions=>["name like ?", "%"+params[:name]+"%"])

    where("name LIKE ? OR phone_number LIKE ?", "%#{query}%", "%#{query}%")
  end
end
