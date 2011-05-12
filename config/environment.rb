# Load the rails application
require File.expand_path('../application', __FILE__)

# Use commas in csv files
ToCSV.csv_options[:col_sep] = ','

# Initialize the rails application
TrapQueue::Application.initialize!
