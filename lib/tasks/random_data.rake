def random_zip
  return 89000+rand(100)
end

def random_address
  Faker::Address.street_address(rand > 0.5)
end

def random_name
  Faker::Name.name
end

def random_phone
  if rand < 0.1
    return Faker::PhoneNumber.phone_number
  else
    return "702-#{'%03d'%rand(1000)}-#{'%04d'%rand(10000)}"
  end
end

def random_city
  ["Las Vegas","North Las Vegas","Henderson"].sample
end

def random_data
  Location.delete_all
  Job.delete_all

  end_date = Date.today

  100.times do
    creation_date = end_date - rand(1000)

    client = Client.create!( {
      :name => random_name,
      :phone_number => random_phone,
      :created_at => creation_date,
      :updated_at => creation_date
    } )

    location = Location.create!( {
      :addr1 => random_address,
      :addr2 => "", # todo: random company name?
      :city => random_city,
      :zip => random_zip,
      :created_at => creation_date,
      :updated_at => creation_date,
      :client => client
    } )

    (rand 4).times do
      ncats = rand 20
      Job.create!( {
        :number_of_cats => ncats,
        :actual_number_of_cats => rand(ncats),
        :status => "done",
        :created_at => creation_date,
        :updated_at => creation_date,
        :location => location
      } )
    end
  end
end

namespace :db do
  desc "Erases all locations and jobs and replaces with random data"
  task :random => :environment do
    random_data
  end
end
