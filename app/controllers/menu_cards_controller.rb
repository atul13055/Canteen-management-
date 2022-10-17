class MenuCardsController < ApplicationController

  def index
     @q = MenuCard.ransack(params[:q])
     @menu_cards = @q.result(distinct: true)
     @passes = Pass.all
   
  end

  def new
		@menu_card = MenuCard.new
	end


	def show 
        #debugger
		 @menu_card = MenuCard.find(params[:id])
	end

	def edit
     @menu_card = MenuCard.find(params[:id])
    end
    def update
      @menu_card = MenuCard.update(menu_parms)

      redirect_to root_path
    end

   def destroy
   	   @menu_card = MenuCard.find(params[:id])
        @menu_card.destroy
        redirect_to root_path
    end

	def create 
		#debugger
		@menu_card = MenuCard.create(menu_parms)

		 redirect_to root_path
	end

    private
     def menu_parms
     	 params.require(:menu_card).permit(:name, :desc,:price )
     end
end


