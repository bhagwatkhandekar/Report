class CreateMfiReports < ActiveRecord::Migration
  def change
    create_table :mfi_reports do |t|
      t.integer :ref_number
      t.string :inquiry_purpose
      t.decimal :transaction_amount
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :additional_name_type
      t.string :additional_name
      t.string :address
      t.integer :pin_code
      t.datetime :date_of_birth
      t.string :gender
      t.integer :ration_card
      t.integer :voter_id
      t.integer :national_id
      t.integer :phone_home
      t.integer :phone_mob

      t.timestamps null: false
    end
  end
end
