class Account < ApplicationRecord
  enum status: [:pending, :paid, :overdue]
  validates :customer, :description, :email, :due, :status, :start_date, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}
end
