require 'rails_helper'
require 'pry'

describe "post parks route", :type => :request do

  before do
    park = Park.all.sample
    binding.pry
    patch "/parks/#{park.id}", params: { :name => 'Cool Dude', :state => 'chill'}
  end


  it 'returns the group' do
    # binding.pry
    expect(JSON.parse(response.body)['name']).to eq('Cool Dude')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
