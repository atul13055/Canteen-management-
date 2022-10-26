class MenuCard < ApplicationRecord
	has_many :orders, dependent: :destroy
    has_many :payments, dependent: :destroy
	has_one_attached :image, dependent: :destroy
end
