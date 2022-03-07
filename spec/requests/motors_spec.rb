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
end
