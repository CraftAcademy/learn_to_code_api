# frozen_string_literal: true

RSpec.describe 'Api::Categories', type: :request do
  let!(:categories) do
    [
      { category_title: 'Front end', skills: [{ title: 'React' }, { title: 'JavaScript' }] },
      { category_title: 'Back-end', skills: [{ title: 'Ruby' }, { title: 'PostGreSQL' }] },
      { category_title: 'Project Management', skills: [{ title: 'Agile' }, { title: 'Lean' }] }
    ].each do |category|
      new_category = create(:category, title: category[:category_title])
      category[:skills].each do |skill|
        create(:skill, category: new_category, title: skill[:title])
      end
    end
  end
  describe 'GET /api/categories' do
    before { get api_categories_path }
    it 'returns 200 status' do
      expect(response).to have_http_status(200)
    end

    it 'returns a collection of categories' do
      binding.pry
      expect(response_json['categories'].count).to eq 3
    end
  end
end
