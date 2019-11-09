RSpec.describe Quote, type: :model do
  it 'should have valid Factory' do
    expect(create(:quote)).to be_valid
  end

  it { is_expected.to have_db_column :body }
end
