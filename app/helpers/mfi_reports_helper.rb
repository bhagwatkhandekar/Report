module MfiReportsHelper
	
	def generate_credit_report(api_response)
		parsed_response = JSON(api_response)
		create_account_summary_object(parsed_response)
		if (parsed_response["EquiFaxMFIModel"].present? && parsed_response["EquiFaxMFIModel"]["Items"].present? && parsed_response["EquiFaxMFIModel"]["Items"]["Erorr"].present?)
			cust_cred_report = create_account_summary_object(parsed_response)
			response_account_details  = parsed_response["EquiFaxMFIModel"]["Items"].third["AccountDetails"]
			response_account_details.each do |details|
				account_summary.account_details.create(account_number: details['AccountNumber'], balance_sepcified: details['BalanceSpecified'], current_balance: details['CurrentBalance'], disbursed_amount: details['DisbursedAmount'], institution: details['Institution'], last_payment: details['LastPayment'], last_payment_date: details['LastPaymentDate'], loan_purpose: details['LoanPurpose'], past_due_amount: details['PastDueAmount'], write_off_amount: details['WriteOffAmount'])
			end
		else
			msg = parsed_response['ErrorMessage']
		end
	end

	def create_account_summary_object(response)
		account_summary_response = response["EquiFaxMFIModel"]["Items"].third["AccountSummary"]
		cust_cred_report = CustomerCreditReport.new
		cust_cred_report.no_of_active_accounts = account_summary_response['NoOfActiveAccounts']
		cust_cred_report.total_balance_amount = account_summary_response['TotalBalanceAmount']
		cust_cred_report.no_of_past_due_account = account_summary_response['NoOfPastDueAccounts']	
		cust_cred_report.total_past_due = account_summary_response['TotalPastDue']
		cust_cred_report.no_of_write_offs = account_summary_response['NoOfWriteOffs'
		]
		cust_cred_report.total_written_off_amount = account_summary_response['TotalWrittenOffAmount']
		cust_cred_report.total_monthly_payment_amount = account_summary_response['TotalMonthlyPaymentAmount']
		cust_cred_report.save
	end
end
