class ChangeStatusOnAccounts < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts, :status, 'integer USING CAST(status AS integer)', default: 0
  end
end
