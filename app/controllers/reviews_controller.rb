class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(reviews_params)
    @review.restaurant = @restaurant
    raise
  end

  private

  def reviews_params
    params.require(:review).permit[:content, :rating]
  end
end
