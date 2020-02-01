require 'rails_helper'
require 'pry'

describe "patch reviews route", :type => :request do

  before do
    park = Park.all.sample
    review = Review.create(title: "sweet", content: "real sweet", park_id: park.id)
    patch "/parks/#{park.id}/reviews/#{review.id}", params: { :name => 'Cool Dude', :state => 'chill'}
  end


  it 'updates park successfully' do
    expect(JSON.parse(response.body)).to eq("review"=>"Review successully updated!")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
