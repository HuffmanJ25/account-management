class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :customer
      t.string :description
      t.string :email
      t.integer :amount
      t.date :due
      t.string :status

      t.timestamps
    end
  end
end
