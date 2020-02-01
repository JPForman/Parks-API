require 'rails_helper'
require 'pry'

describe "delete park route", :type => :request do

  before do
    park = Park.all.sample
    delete "/parks/#{park.id}"
  end


  it 'updates park successfully' do
    expect(JSON.parse(response.body)).to eq("message"=>"DESTROYED Park successfully.")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
