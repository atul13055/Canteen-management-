class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu_card
  has_many :passes
  
  
end
