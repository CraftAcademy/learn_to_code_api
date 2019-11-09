# frozen_string_literal: true

RSpec.describe 'Api::QuotesController', type: :request do
  let!(:expected_quote) { 'Something smart' }
  describe 'GET /api/quotes' do
    before do
      allow(Faker::Hacker).to receive(:say_something_smart)
        .and_return(expected_quote)
      post api_quote_path
    end

    it 'returns 200 status' do
      expect(response).to have_http_status(200)
    end

    it 'returns a String' do
      expect(response_json['quote']).to be_an_instance_of(String)
    end

    it 'returns a quote' do
      expect(response_json['quote']).to eq expected_quote
    end
  end
end
