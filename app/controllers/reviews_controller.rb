class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(set_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to new_restaurant_review_path(@review.restaurant)
    else
      render :new
    end

    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_params
    params.require(:review).permit(:content, :rating)
  end
end
