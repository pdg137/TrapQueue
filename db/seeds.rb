User.destroy_all
Location.destroy_all
Client.destroy_all
Job.destroy_all

user = User.create!(:email => "user@example.com", :password => "password", :password_confirmation => "password")
user.confirm!

location = Location.create!(:addr1 => '1313 Mockingbird Lane', :addr2 => 'Apt. 3',
  :city => 'Henderson', :zip => '89074', :name => 'Henry Munster',
  :phone_number => '702-333-2222' )

Job.create!(:number_of_cats => 333, :location => location, :status => 'open')
Job.create!(:number_of_cats => 1, :actual_number_of_cats => 666, :status => 'in_progress', :location => location)
Job.create!(:number_of_cats => 333, :location => location, :status => 'followup')
Job.create!(:number_of_cats => 333, :location => location, :status => 'closed')
Job.create!(:number_of_cats => 333, :location => location, :status => 'archived')
Job.create!(:number_of_cats => 333, :location => location, :status => 'open')
Job.create!(:number_of_cats => 333, :location => location, :status => 'open')
Job.create!(:number_of_cats=>30, :actual_number_of_cats=>20, :location=>location, :status=>"done", :created_at=>10.days.ago, :updated_at=>5.days.ago)

Client.create!(:name=>"Jane Doe", :phone_number=>"7021231111")
Client.create!(:name=>"Gabe Ross", :phone_number=>"7021232222")
Client.create!(:name=>"Paul Garrison", :phone_number=>"7021236666")
