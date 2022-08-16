class Loan < ApplicationRecord
  TRANSFER_TYPES = ["SEPA", "crypto", "cash"]
  validates :title, presence: true
  validates :amount, presence: true
  # validates :interest_rate, presence: true, numericality: { greater_than_or_equal_to: 0 }
  # validates :transfer_type, inclusion: { in: TRANSFER_TYPES }
end
