class OrdersController < ApplicationController
  def index 
  	 @passes = Pass.all.where(user_id:current_user)
     @orders = Order.all.where(user_id:current_user)
    #.where(menu_card_id: params[:menu_card_id])
    if current_user.has_role? :admin
  	  @orders = Order.all
    end
  end
  def new
		@order = Order.new
	end

  def create
  	#debugger 
    @menu_card = MenuCard.find(params[:menu_card_id])
    @order = @menu_card.orders.new(order_params.merge(user_id: current_user.id))
    @order.total = (@order.qnty *  @order.menu_card.price)
    @order.save
    redirect_to menu_card_user_orders_path
  end
  def show
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

