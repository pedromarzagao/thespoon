class RestaurantsController < ApplicationController

  RESTAURANTS = {
      1 => { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
      2 => { name: "Sushi Samba", address: "City, London", category: "japanese" }
    }

  def index
    unless params[:food_type].blank?
    @restaurants = RESTAURANTS.select do |id, rest|
      params[:food_type] == rest[:category]
    end
  else
    @restaurants = RESTAURANTS
  end
  end

  def create
    # TODO
  end

  def show
    # without active view we have to do the below:
    id = params[:id].to_i
    @restaurants = RESTAURANTS[id]
  end

end
