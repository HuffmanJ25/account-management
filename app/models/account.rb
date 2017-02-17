class Account < ApplicationRecord
  enum status: [:pending, :paid, :overdue]
end
