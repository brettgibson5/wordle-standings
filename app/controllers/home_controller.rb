class HomeController < ApplicationController
  def index
    @people = Person.order("average ASC")
  end
end
