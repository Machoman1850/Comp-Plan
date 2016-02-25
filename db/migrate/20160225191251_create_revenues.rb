class CreateRevenues < ActiveRecord::Migration
  def change
    create_table :revenues do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
