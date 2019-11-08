RSpec.describe Skill, type: :model do
  it 'should have valid Factory' do
    expect(create(:skill)).to be_valid
  end

  it { is_expected.to have_db_column :title }
  it { is_expected.to belong_to :category }
end
