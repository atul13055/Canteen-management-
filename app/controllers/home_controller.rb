class HomeController < ApplicationController
   
  def index
    #debugger
    @q = MenuCard.ransack(params[:q])
    @menu_cards = @q.result(:menu_card)
     @passes = Pass.all
    # @menu_cards = MenuCard.all 
    
  end
end
