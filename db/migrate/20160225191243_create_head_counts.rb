class CreateHeadCounts < ActiveRecord::Migration
  def change
    create_table :head_counts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
