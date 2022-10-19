class MenuCard < ApplicationRecord
	has_many :orders
    has_many :payments
	def total
		debugger
		MenuCard.price
	end
end
