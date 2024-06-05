class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.new(review_params)
    if @review.save
      redirect_to restaurants_path
    else
      render "restaurants/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
