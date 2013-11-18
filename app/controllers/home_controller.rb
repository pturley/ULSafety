class HomeController < ApplicationController

  def index
    @random_number = rand(30)
  end
end