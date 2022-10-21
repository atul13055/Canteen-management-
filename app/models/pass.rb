class Pass < ApplicationRecord
  belongs_to :user
  has_many :payments, dependent: :destroy
end
