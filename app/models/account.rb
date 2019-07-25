class Account < ApplicationRecord
	belongs_to :user
  
  def render_detail(parent_key = 'attributes')
	 detail = {
    id: self.id,
    user_id: self.user.id,
    name: self.name,
    balance: self.balance   
  }
	 
	 {parent_key => detail}
	end
end
