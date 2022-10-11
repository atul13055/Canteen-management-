class HomeController < ApplicationController

  def index
   @menu_cards = MenuCard.all 
  end
end
