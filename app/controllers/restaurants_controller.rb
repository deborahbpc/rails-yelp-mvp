class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]
  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/id
  def show
    @reviews = @restaurant.reviews
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, noticee: "Restaurant was successfully created"
    else
      render :new
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
