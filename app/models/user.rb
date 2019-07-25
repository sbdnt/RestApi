class User < ApplicationRecord
	has_many :accounts, dependent: :destroy

	# get user information
	def info
	  {id: self.id, name: self.name}
	end

	# get list user account ids
	def acc_ids
	  self.accounts.pluck(:id)
	end

	# render user detail
	def render_detail(parent_key = 'attributes')
	 detail = {}
	 detail.merge! info
	 detail.store(:account_ids, acc_ids)
	 
	 {parent_key => detail}
	end

	# render user accounts list
	def render_accounts
	  accounts = []
	  self.accounts.each do |acc|
	  	accounts.push acc.render_detail
	  end
	 
	 accounts
	end
end
