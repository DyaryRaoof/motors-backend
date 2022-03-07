require 'rails_helper'

RSpec.describe 'users', type: :request do
  describe 'GET /users' do
    before(:all) do
      Rails.application.load_seed
    end
    before(:example) { post '/api/v1/users', params: { user: { name: 'Dyary Raoof Bayz' } } }
    it 'works! returns correct status code' do
      expect(response).to have_http_status(:created)
    end

    it 'works! reponse body includes Dyary Raoof' do
      expect(response.body).to include 'Dyary Raoof'
    end
  end
end
