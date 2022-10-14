class PassesController < ApplicationController
	

	def create
	 @pass = Pass.new
		debugger
		@pass.user_id= params[:user_id]
       @pass.blance = params[:blance]
       @pass.save
       redirect_to root_path
	end

	def update
	 @pass = Pass.new
		debugger
		@pass.user_id= params[:user_id]
       @pass.blance = params[:blance]
       @pass.save
       redirect_to root_path
	end

 # private
 #  def pass_params
 #  	debugger
 #  	params.require(:pass).permit(:blance)
 #  end
end
