class ChangeStatusOnAccounts < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :status, :integer, default: 0
  end
end
