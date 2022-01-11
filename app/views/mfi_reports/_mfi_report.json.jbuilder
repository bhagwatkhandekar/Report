json.extract! mfi_report, :id, :ref_number, :inquiry_purpose, :transaction_amount, :first_name, :last_name, :middle_name, :additional_name_type, :additional_name, :address, :pin_code, :date_of_birth, :gender, :ration_card, :voter_id, :national_id, :phone_home, :phone_mob, :created_at, :updated_at
json.url mfi_report_url(mfi_report, format: :json)
