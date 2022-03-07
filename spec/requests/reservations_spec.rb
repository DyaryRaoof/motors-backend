require 'rails_helper'

RSpec.describe 'reservations', type: :request do
  describe 'GET /reservations' do
    before(:all) do
      Rails.application.load_seed
    end
    before(:example) { get '/api/v1/reservations' }
    it 'works! returns correct status code' do
      expect(response).to have_http_status(:ok)
    end
  end
end
