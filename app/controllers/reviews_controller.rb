require 'pry'

class ReviewsController < ApplicationController

  def index
    # if params[:park_id]
    #   @park = Park.find(params[:park_id])
    # else if params[:user_id]
    #   @user = User.find(params[:user_id])
    # end
    @park = Park.find(params[:park_id])
    @reviews = @park.reviews
    json_response(@reviews)
  end

  def show
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def create
    @review = Review.create!(review_params)
    json_response(@review, :created)
  end

  def update
    @review = Review.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        review: "Review successully updated!"
      }
    end
  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy!
      render status: 200, json: {
        review: "DESTROYED Review successfully."
      }
    end
  end

  private
  def review_params
    params.permit(:title, :content, :park_id)
  end
end
