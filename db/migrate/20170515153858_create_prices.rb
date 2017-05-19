class CreatePrices < ActiveRecord::Migration[5.1]
  def change
    create_table :prices do |t|
      t.string :currency
      t.decimal :price
      t.string :condition
      t.datetime :date
      t.string :seller_type
      t.string :serial
    end
  end
end
