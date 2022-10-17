class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
   has_many :orders
   has_one :pass
   
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         
end
