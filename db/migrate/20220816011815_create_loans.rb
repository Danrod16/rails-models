class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :title
      t.float :amount
      t.date :start_date
      t.date :end_date
      t.float :interest_rate
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
