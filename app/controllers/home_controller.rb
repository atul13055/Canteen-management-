class HomeController < ApplicationController
   
  def index
    #debugger
    @q = MenuCard.ransack(params[:q])
    @menu_cards = @q.result(:)
     @passes = Pass.all
    # @menu_cards = MenuCard.all 
    
  end
end
