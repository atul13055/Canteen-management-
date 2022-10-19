class Payment < ApplicationRecord
  belongs_to :user
  belongs_to :menu_card
  belongs_to :pass
end
