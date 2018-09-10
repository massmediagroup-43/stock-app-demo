class StockForm
  include Capybara::DSL

  def visit_page(form_path)
    visit form_path
    self
  end

  def fill_with(stock)
    fill_in 'Name', with: stock.name
    fill_in 'Duration', with: stock.duration
    fill_in 'Price', with: stock.price
    fill_in 'Interest', with: stock.interest
    self
  end

  def submit(button_text = 'Create Stock')
    click_button button_text
    self
  end
end