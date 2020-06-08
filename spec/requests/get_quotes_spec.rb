require 'rails_helper'

describe "get all quotes route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 20)}

  # before do 
  #   20.times do 
  #     Quote.create!({author:Faker::Book.author, content:Faker::Movie.quote})
  #   end

    before { get '/quotes' }
  # end

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end