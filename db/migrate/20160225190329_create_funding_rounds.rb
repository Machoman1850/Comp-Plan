class CreateFundingRounds < ActiveRecord::Migration
  def change
    create_table :funding_rounds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
