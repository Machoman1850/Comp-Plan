class CreateCapitalRaiseds < ActiveRecord::Migration
  def change
    create_table :capital_raiseds do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
