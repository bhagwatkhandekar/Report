class CreateAccountDetails < ActiveRecord::Migration
  def change
    create_table :account_details do |t|
      t.string :account_number
      t.string :balance_sepcified
      t.decimal :current_balance
      t.decimal :disbursed_amount
      t.string :institution
      t.decimal :last_payment
      t.string :last_payment_date
      t.string :loan_purpose
      t.decimal :past_due_amount
      t.decimal :write_off_amount
      t.integer :customer_credit_report_id
      t.timestamps null: false
    end
  end
end
