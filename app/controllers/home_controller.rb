class HomeController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @random_number = rand(30)
  end
end