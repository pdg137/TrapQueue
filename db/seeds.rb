User.destroy_all
Location.destroy_all
Client.destroy_all

user = User.create!(:email => "user@example.com", :password => "password", :password_confirmation => "password")
user.confirm!

location = Location.create!(:addr1 => '1313 Mockingbird Lane', :city => 'Henderson', :zip => '89074', :name => 'Henry Munster', :phone_number => '702-333-2222' )

Client.create!(:name=>"Jane Doe", :phone_number=>"7021231111")
Client.create!(:name=>"Gabe Ross", :phone_number=>"7021232222")
Client.create!(:name=>"Paul Garrison", :phone_number=>"7021236666")

