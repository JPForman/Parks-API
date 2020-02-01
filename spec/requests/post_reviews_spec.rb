require 'rails_helper'
require 'pry'

describe "post reviews route", :type => :request do
  before(:each) do
    Park.destroy_all
    Review.destroy_all
  end

  # let!(:groups) { FactoryBot.create_list(:group, 1)}
  # let!(:users) { FactoryBot.create_list(:user, 1)}

  before do
    park = FactoryBot.create(:park)
    post "/parks/#{park.id}/reviews", params: {
      :title => 'Titley', :content => 'Great googly moogly',
      :park_id => park.id
    }
  end


  it 'returns the messsage' do
    expect(JSON.parse(response.body)['title']).to eq('Titley')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
