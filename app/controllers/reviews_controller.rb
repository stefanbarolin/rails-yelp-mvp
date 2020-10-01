class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(set_params)
    if @review.save
      redirect_to new_restaurant_review_path(@review.restaurant)
    else
      render :new
    end
  end

  private

  def set_params
    params.require(@review).permit(:content, :rating, :restaurant_id)
  end
end
