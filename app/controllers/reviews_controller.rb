class ReviewsController < ApplicationController
  # def new
    # # we need @restaurant in our `simple_form_for`
    # @restaurant = Restaurant.find(params[:restaurant_id])
    # @review = Review.new
  # end

  def create
    @review = Review.new(valid_params)
    # we need `restaurant_id` to associate review with corresponding restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'restaurants/show'
    end
  end

  private

  def valid_params
    params.require(:review).permit(:rating, :content)
  end
end
