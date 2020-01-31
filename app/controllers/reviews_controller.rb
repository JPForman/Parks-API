require 'pry'

class ReviewsController < ApplicationController

  def index
    # if params[:park_id]
    #   @park = Park.find(params[:park_id])
    # else if params[:user_id]
    #   @user = User.find(params[:user_id])
    # end
    @park = Park.find(params[:park_id])
    @messages = @park.messages
    json_response(@messages)
  end

  def show
    @message = Review.find(params[:id])
    json_response(@message)
  end

  def create
    @message = Review.create!(message_params)
    json_response(@message, :created)
  end

  def update
    @message = Review.find(params[:id])
    if @message.update!(message_params)
      render status: 200, json: {
        message: "Review successully updated!"
      }
    end
  end

  def destroy
    @message = Review.find(params[:id])
    if @message.destroy!
      render status: 200, json: {
        message: "DESTROYED Review successfully."
      }
    end
  end

  private
  def message_params
    params.permit(:title, :content, :park_id)
  end
end
