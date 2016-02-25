class CreateCompItems < ActiveRecord::Migration
  def change
    create_table :comp_items do |t|
      t.string :company_title
      t.boolean :founder
      t.boolean :full_time
      t.integer :base_salary
      t.integer :bonus
      t.float :percent_of_shares
      t.datetime :company_founded
      t.references :head_count, index: true, foreign_key: true
      t.references :revenue, index: true, foreign_key: true
      t.references :capital_raised, index: true, foreign_key: true
      t.references :funding_round, index: true, foreign_key: true
      t.references :development_stage, index: true, foreign_key: true
      t.references :industry, index: true, foreign_key: true
      t.references :employee_region, index: true, foreign_key: true
      t.references :primary_title, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
