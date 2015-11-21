class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show]

	def index
		@users = User.paginate(page: params[:page], per_page: 2)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			flash[:success] = "Welcome to GoochMe #{@user.username}"
			redirect_to games_path
		else
			render 'new'
		end
	end

	def edit

	end

	def update
		if @user.update(user_params)
			flash[:success] = "Your account was updated"
			redirect_to games_path
		else
			render 'edit'
		end
	end

	def show
		@user_games = @user.games.paginate(page: params[:page], per_page: 5)
	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

	def set_user
		@user = User.find(pramas[:id])
	end

end