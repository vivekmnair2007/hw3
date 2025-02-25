class PlacesController < ApplicationController
  
  def index
    @places = Place.all
  end

  def show
    @place = Place.find_by("id" => params["id"])
    @entries = Entry.where("place_id" => params["id"])
  end

  def new
  end
  
  def create
    # start with a new Place
    @place = Place.new

    # assign user-entered form data to Place's columns
    @place["name"] = params["name"]

    # save Contact row
    @place.save

    # redirect user
    redirect_to "/"
  end
  
end
