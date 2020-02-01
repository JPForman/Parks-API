require 'rails_helper'

describe "post parks route", :type => :request do

  before do
    post '/parks', params: { :name => 'AwesomeSauce', :state => 'Oregon'}
  end


  it 'returns the group' do
    expect(JSON.parse(response.body)['name']).to eq('AwesomeSauce')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
