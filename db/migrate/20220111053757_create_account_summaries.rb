class CreateAccountSummaries < ActiveRecord::Migration
  def change
    create_table :account_summaries do |t|
      t.integer :no_of_active_accounts
      t.decimal :total_balance_amount
      t.integer :no_of_past_due_account
      t.decimal :total_past_due
      t.decimal :no_of_write_offs
      t.decimal :total_written_off_amount
      t.decimal :total_monthly_payment_amount

      t.timestamps null: false
    end
  end
end
