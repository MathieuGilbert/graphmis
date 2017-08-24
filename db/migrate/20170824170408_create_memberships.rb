class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.string :number
      t.date :join_date
      t.float :balance_due

      t.references :coverage_type, foreign_key: true

      t.timestamps
    end
  end
end
