require 'rails_helper'

RSpec.describe Hike, type: :model do
  subject(:hike) { FactoryGirl.create :hike }

  it 'has a valid factory' do
    expect(hike).to be_valid
  end

  describe 'associations' do
    it 'has many trips' do
      ar = described_class.reflect_on_association(:trips)
      expect(ar.macro) == :has_many
    end

    it 'has many hikers' do
      ar = described_class.reflect_on_association(:hikers)
      expect(ar.macro) == :has_many
    end
  end
end
