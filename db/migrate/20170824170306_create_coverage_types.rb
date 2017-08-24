class CreateCoverageTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :coverage_types do |t|
      t.string :name
      t.float :monthly_price
      t.integer :tow_distance

      t.timestamps
    end
  end
end
