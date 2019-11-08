# frozen_string_literal: true

RSpec.describe 'Api::Categories', type: :request do
  let!(:categories) do
    ['Front end', 'Back-end', 'Project Management'].each do |category|
      create(:category, title: category)
    end
  end
  describe 'GET /api/categories' do
    before { get api_categories_path}
    it 'returns 200 status' do
      expect(response).to have_http_status(200)
    end

    it 'returns a collection of categories' do
      expect(response_json['categories'].count).to eq 3
    end
  end
end
