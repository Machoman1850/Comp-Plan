class CreateEmployeeRegions < ActiveRecord::Migration
  def change
    create_table :employee_regions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
