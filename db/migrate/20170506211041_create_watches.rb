class CreateWatches < ActiveRecord::Migration[5.1]
  def change
    create_table :watches do |t|
      t.string :name
      t.string :brand
      t.string :reference
      t.integer :year
      t.string :serial
      t.decimal :price
      t.string :type
      t.text :description

      t.timestamps
    end
  end
end
