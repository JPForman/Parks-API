require 'rails_helper'
require 'pry'

describe "post parks route", :type => :request do

  before do
    park = Park.all.sample
    patch "/parks/#{park.id}", params: { :name => 'Cool Dude', :state => 'chill'}
  end


  it 'updates park successfully' do
    expect(JSON.parse(response.body)).to eq("message" => "Updated Park Successfully.")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
