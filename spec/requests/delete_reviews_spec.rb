require 'rails_helper'
require 'pry'

describe "delete review route", :type => :request do

  before do
    park = Park.all.sample
    review = Review.all.sample
    delete "/parks/#{park.id}/reviews/#{review.id}"
  end


  it 'deletes park successfully' do
    expect(JSON.parse(response.body)).to eq("review"=>"DESTROYED Review successfully.")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
