class CreateDevelopmentStages < ActiveRecord::Migration
  def change
    create_table :development_stages do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
