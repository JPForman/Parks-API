require 'rails_helper'

describe "get all reviews route", :type => :request do
  let!(:reviews) { FactoryBot.create_list(:review, 10)}
  before { get '/parks/21/reviews'}

  it 'returns all reviews to a specific group' do
    expect(JSON.parse(response.body).size).to eq(10)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
