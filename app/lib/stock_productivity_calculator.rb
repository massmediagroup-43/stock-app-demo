class StockProductivityCalculator
  def initialize(stock)
    @stock = stock
  end

  def valuation_changes
    1.upto(@stock.duration).map { |year| [year, calculate(year)] }
  end

  def total_value
    calculate(@stock.duration)
  end

  private

  def calculate(years)
    interest_rate = @stock.interest / 100
    compounded_per_year = 12 # by default compounded monthly
    result = @stock.price * (1 + interest_rate / compounded_per_year)**(compounded_per_year * years)
    result.round(2)
  end
end
