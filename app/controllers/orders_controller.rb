class OrdersController < ApplicationController
  def index 
  	
    @orders = Order.all.where(menu_card_id: params[:menu_card_id])
  	#@orders = Order.all
  end
  def new
		@order = Order.new
	end

  def create
  	debugger
    @menu_card = MenuCard.find(params[:menu_card_id])
    #@order.total = @menu_card.price * order_params.to_h
    @order = @menu_card.orders.create(order_params.merge(user_id: current_user.id))
    
    redirect_to menu_card_user_orders_path
  end
  def show
  	#@menu_card = MenuCard.find(params[:order_id])
    @order = Order.find(params[:order_id])
  end
  private
   def order_params
      params.require(:order).permit(:qnty)
   end	
end

