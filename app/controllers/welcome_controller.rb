class WelcomeController < ApplicationController
  access_control do
    allow :admin
    allow :manager
    allow :coordinator
  end

  def index
  end

end
