class AddCreateDateToAccounts < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :start_date, :date
  end
end
