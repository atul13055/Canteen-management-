class PaymentsController < ApplicationController

  def create
    #debugger
   @user = User.find(params[:user_id]) 
   @pass = Pass.find(params[:pass_id])
   @order= @user.orders.find(params[:order_id])
   @a=@pass.blance - @order.total
   @pass.update(blance:@a)
   redirect_to root_path


    #debugger
  end
end
