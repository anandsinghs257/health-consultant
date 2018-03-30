class HomeController < ApplicationController
  def index
    @doctors = Doctor.last(6)
  end
end
