class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.references :price, foreign_key: true
      t.references :watch, foreign_key: true

      t.timestamps
    end
  end
end
