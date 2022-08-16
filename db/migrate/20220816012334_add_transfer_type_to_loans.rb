class AddTransferTypeToLoans < ActiveRecord::Migration[6.1]
  def change
    add_column :loans, :transfer_type, :string, default: "SEPA"
  end
end
