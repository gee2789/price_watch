class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.references :account, foreign_key: true
      t.references :watch, foreign_key: true

      t.timestamps
    end
  end
end
