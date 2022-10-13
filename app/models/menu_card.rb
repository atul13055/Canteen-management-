class MenuCard < ApplicationRecord
	has_many :orders

	def total
		debugger
		MenuCard.price
	end
end
