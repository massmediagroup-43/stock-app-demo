require 'rails_helper'

RSpec.describe Stock, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    %i[price duration].each do |field|
      it { should validate_numericality_of(field).is_greater_than_or_equal_to(1) }
      it { should validate_numericality_of(field).only_integer }
    end
  end

  describe 'associations' do
    it { should belong_to(:user) }
  end
end
