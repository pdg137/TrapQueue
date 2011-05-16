%w(users locations clients jobs).each do |table|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table}")
end

puts "Creating Users"
User.roles.each do |role|
  user = User.create!(
    :email => "#{role}@example.com",
    :password => "password",
    :password_confirmation => "password")
  user.send("is_#{role}=", true)
  user.confirm!
end

puts "Creating Locations"
100.times do
  location = Location.create!(
    :name => Faker::Company.name,
    :addr1 => Faker::Address.street_address,
    :city => Faker::Address.city,
    :zip => Faker::Address.zip_code,
    :phone => Faker::PhoneNumber.phone_number)
end

puts "Creating Clients"
100.times do
  Client.create!(
    :name => Faker::Name.name,
    :phone_number => Faker::PhoneNumber.phone_number)
end

puts "Creating Jobs"
100.times do
  Job.create!(
    :number_of_cats => rand(300) + 1,
    :actual_number_of_cats => rand(300) + 1,
    :location => Location.find(rand(Location.count) + 1),
    :status => %w(open followup closed archived in_progress).rand)
end
