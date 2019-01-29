require 'spec_helper'

describe 'punk api' do
  before(:all) do
    @punk_data_response = ParseJson.new(HTTParty::get("https://api.punkapi.com/v2/beers").body).json_data
  end

  it 'should be an object type array' do
    # puts @fixer_data_response
    expect(@punk_data_response[0]).to be_kind_of(Hash)
  end

  it 'should contain name as Buzz' do
    expect(@punk_data_response.first['name']).to eq 'Buzz'
  end

  it 'should contain a String for first brewed' do
    expect(@punk_data_response.first['first_brewed']).to be_kind_of(String)
  end 

  it 'should have an id of 25 for the last beer' do
    expect(@punk_data_response.last['id']).to eq 25
  end

  it 'should print the api' do
    p @punk_data_response[10]
  end 
end
