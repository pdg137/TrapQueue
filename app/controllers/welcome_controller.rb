class WelcomeController < ApplicationController
  access_control do
    allow anonymous, logged_in
  end

  def index
  end

end
