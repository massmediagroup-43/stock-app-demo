class Stock < ApplicationRecord
  validates :name, presence: true
  validates :duration, presence: true, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  validates :interest, presence: true, numericality: { greater_than: 0 }
  belongs_to :user
end
