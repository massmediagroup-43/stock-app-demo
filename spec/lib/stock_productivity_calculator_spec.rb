require 'rails_helper'
RSpec.describe StockProductivityCalculator do
  before :all do
    stock = Stock.new(price: 5000, interest: 5, duration: 10)
    @calculation = StockProductivityCalculator.new(stock)
  end

  it 'returns correct total_value' do
    expect(@calculation.total_value).to eq(8235.05)
  end
  it '#valuation_changes' do
    days = @calculation.valuation_changes.map(&:first)
    expected_days_set = (1..10).to_a
    expect(days).to eq(expected_days_set)
  end
end
