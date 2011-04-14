User.destroy_all
Location.destroy_all
user = User.create!(:email => "user@example.com", :password => "password", :password_confirmation => "password")
user.confirm!

location = Location.create!(:addr1 => '1313 Mockingbird Lane', :city => 'Henderson', :zip => '89074', :name => 'Henry Munster', :phone_number => '702-333-2222' )

