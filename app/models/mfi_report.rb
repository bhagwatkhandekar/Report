class MfiReport < ActiveRecord::Base
	def get_body(mfi_report)
		body = {
 			"FirstName": mfi_report.first_name,
 			"DOB": "3 June 1996",
 			"Gender": "1",
 			"Address": mfi_report.address,
 			"PinCode": mfi_report.pin_code.to_s,
 			"state": "TN",
 			"MobileNumber": mfi_report.phone_mob.to_s,
 			"TaxID": "BUXPS2681D",
 			"RefNumber": mfi_report.refer_number.to_s,
 			"AdditionalNameType": mfi_report.additional_name_type,
 			"AdditionalName": mfi_report.additional_name,
 			"UserID": "manojd",
 			"Password": "Deshmukh@123",
 			"InquiryPurpose": [
        {
            "InquiryReport": 2,
            "InquiryBureau": 1,
            "FinancePurpose": "3E"
        }
    	]
		}		
	end
end
