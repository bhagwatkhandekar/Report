class CreateStoreCreditReports < ActiveRecord::Migration
  def change
    create_table :store_credit_reports do |t|
      t.text :desc_response

      t.timestamps null: false
    end
  end
end
