require 'rails_helper'

RSpec.describe 'motors', type: :request do
  describe 'GET /motors' do
    before(:all) do
      Rails.application.load_seed
    end
    before(:example) { get '/api/v1/motors' }
    it 'works! returns correct status code' do
      expect(response).to have_http_status(:ok)
    end

    it 'works! reponse body includes Motor1' do
      expect(response.body).to include 'Motor 1'
    end
  end
  
  describe 'POST /motors' do
    before(:example) { post '/api/v1/motors/create', params: { :name => 'Motor 10', :description => 'this is a motor', :price => 1000,
                                 :image => 'https://i.ibb.co/JygvmW1/motor1.png' } }
    it 'works! returns correct status code' do
      expect(response).to have_http_status(:created)
    end
  end

  describe 'delete /motors' do
    before(:all) do
      Rails.application.load_seed
    end
    before(:example) { delete '/api/v1/motors/1/destroy' }
    it 'works! returns correct status code' do
      expect(response).to have_http_status(:ok)
    end
  end

end
