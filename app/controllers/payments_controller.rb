class PaymentsController < ApplicationController

  def create
    debugger
   @user = User.find(params[:user_id]) 
   @pass = Pass.find(params[:pass_id])
   @order = @user.orders.find(params[:order_id])

  if @pass.blance < @order.total
       flash[:notice] = "Add More Amount In your Pass" 
       redirect_to  edit_user_pass_path(current_user, current_user.pass)
  else
       @a=@pass.blance - @order.total
       @pass.update(blance:@a)
       redirect_to root_path 
  end
    #debugger
  end
end
