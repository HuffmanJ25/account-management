class ChangeAmountOnAccounts < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :amount, :float
  end
end
