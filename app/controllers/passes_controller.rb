class PassesController < ApplicationController
	
	def new
	 @pass = Pass.new	
    end

	def create
		#debugger
		@user = User.find(params[:user_id])
        @pass= @user.build_pass(pass_params)
        @pass.save
       redirect_to root_path
	end

    def edit
    	#debugger
      @pass = Pass.find(params[:id])
     
    end

	def update
    #debugger
     @pass = Pass.find(params[:id])
     @temp = @pass.blance
		 a = @pass.blance.to_i+params[:pass][:blance].to_i
     @pass.update(blance: a)
    redirect_to root_path
	end

 private
  def pass_params
  	#debugger
  	params.require(:pass).permit(:blance, :check)
  end
end
