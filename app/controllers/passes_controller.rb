class PassesController < ApplicationController
	
	def new
		@pass = Pass.new
		# @user = User.find(params[:user_id])
  #       @pass= @user.build_pass(pass_params)
  #       @pass.save
    end
	def create

		@user = User.find(params[:user_id])
        @pass= @user.build_pass(pass_params)
        @pass.save


	 # @pass = Pass.new
		# debugger
		# @pass.user_id= params[:user_id]
  #      @pass.blance = params[:blance]
  #      @pass.save
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

 private
  def pass_params
  	debugger
  	params.require(:pass).permit(:blance, :check)
  end
end
