class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.date :birth_date

      t.references :address, foreign_key: true
      t.references :membership, foreign_key: true

      t.timestamps
    end
  end
end
