class HomeController < ApplicationController

  def index
   @passes = Pass.all
   @menu_cards = MenuCard.all 
  end
end
