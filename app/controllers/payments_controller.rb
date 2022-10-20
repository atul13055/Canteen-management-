class PaymentsController < ApplicationController
  def new
     @payment = Payment.new	
  end 

  def create 
   find
  end
end
