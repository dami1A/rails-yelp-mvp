class ReviewsController < ApplicationController
    before_action :set_review, only: [:show, :edit]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id]
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to reviews_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
