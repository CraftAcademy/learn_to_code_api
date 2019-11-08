# frozen_string_literal: true

RSpec.describe 'Api::Categories', type: :request do
  describe 'GET /api/categories' do
    it 'works! (now write some real specs)' do
      get api_categories_path
      expect(response).to have_http_status(200)
    end
  end
end
