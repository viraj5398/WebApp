class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def new
		@user = User.new 
	end

	def create
	    @user = User.new(user_params[:id])
		#@user.user = current_user

		if @user.save
			redirect_to @index
		else
			render 'new'
		end

	end


	def show
		@user = User.find(params[:id])
	end

	def update 
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to @user
		else
			render 'edit'
		end
	end

	def edit
		@user = User.find(params[:id])
	end

	def destroy
		@user = User.find(params[:id])

		@user.destroy

		redirect_to posts_path(@post)
	end



	private

	def user_params
		params.require(:user).permit(:first_name, :last_name)
	end

end
