class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :name
      t.integer :duration
      t.integer :price
      t.float :interest
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
