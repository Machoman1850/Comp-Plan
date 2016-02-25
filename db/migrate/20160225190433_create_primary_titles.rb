class CreatePrimaryTitles < ActiveRecord::Migration
  def change
    create_table :primary_titles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
