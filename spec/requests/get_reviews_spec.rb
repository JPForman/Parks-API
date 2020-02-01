require 'rails_helper'


describe "get all reviews route", :type => :request do
  let!(:reviews) { FactoryBot.create_list(:review, 10)}

  park = Park.create(name: "Jojo Park", state: "Florida")
  review = Review.create(title: "sweet", content: "real sweet", park_id: park.id)
  review2 = Review.create(title: "amazingSauce", content: "real amazing and sweet", park_id: park.id)

  before { get "/parks/#{park.id}/reviews"}

  it 'returns all reviews to a specific park' do
    expect(JSON.parse(response.body).size).to eq(2)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
