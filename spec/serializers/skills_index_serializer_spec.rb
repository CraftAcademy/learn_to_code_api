# frozen_string_literal: true

describe Skills::IndexSerializer, type: :serializer do
  let!(:sample) { create(:skill) }
  let(:serialization) do
    sample.reload
    described_class.new(sample)
  end
  subject { JSON.parse(serialization.to_json) }

  it 'contains relevant keys' do
    expected_keys = %w[id title]
    expect(subject.keys).to match expected_keys
  end
end
