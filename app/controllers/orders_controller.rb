class OrdersController < ApplicationController
  def index 
  	 @passes = Pass.all
    @orders = Order.all
    #.where(menu_card_id: params[:menu_card_id])
  	#@orders = Order.all
  end
  def new
		@order = Order.new
	end

  def create
  	#debugger
    @menu_card = MenuCard.find(params[:menu_card_id])
    #@order.total = @menu_card.price * order_params.to_h
    @order = @menu_card.orders.create(order_params.merge(user_id: current_user.id))
    
    redirect_to menu_card_user_orders_path
  end
  def show
    debugger
  	 #@order = MenuCard.find(params[:menu_card_id])
     @order = Order.find(params[:id])
  end

  def destroy

    @order = Order.find(params[:id])
    @order.destroy

     redirect_to menu_card_user_orders_path
  end

  private
   def order_params
      params.require(:order).permit(:qnty)
   end	
end

