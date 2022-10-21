class MenuCard < ApplicationRecord
	has_many :orders, dependent: :destroy
    has_many :payments, dependent: :destroy
	has_many_attached :image, dependent: :destroy
end
