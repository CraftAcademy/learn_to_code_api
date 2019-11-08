# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'should have valid Factory' do
    expect(create(:category)).to be_valid
  end
  
  it { is_expected.to have_db_column :title }
end
