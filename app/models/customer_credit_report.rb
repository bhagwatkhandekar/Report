class CustomerCreditReport < ActiveRecord::Base
	has_many :account_details
end
