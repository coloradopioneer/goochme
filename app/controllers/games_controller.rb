class GamesController < ApplicationController
	before_action :set_game, only: [:edit, :update, :show, :destroy]
	before_action :require_user?, except: [:index, :show]
	before_action :require_same_user, only: [:edit, :update, :destroy]

	def index
		@games = Game.paginate(page: params[:page], per_page: 7)
	end

	def new
		@game = Game.new
	end

	def edit

	end

	def update
		if @game.update(game_params)
			flash[:success] = "Game was successfully updated."
			redirect_to game_path(@game)
		else
			render 'edit'
		end
	end

	def create
		@game = Game.new(game_params)
		@game.user = current_user
		if @game.save
			flash[:success] = "The game was created, you're welcome..."
			redirect_to game_path(@game)
		else
			render 'new'
		end
	end

	def show

	end

	def destroy
		@game.destroy
		flash[:danger] = "Game was successfully deleted."
		redirect_to games_path
	end

	private
		def game_params
			params.require(:game).permit(:type_of_game, :number)
		end

		def set_game
			@game = Game.find(params[:id])
		end

		def require_same_user
			if current_user != @game.user and !current_user.admin?
				flash[:danger] = "You can only edit or delete your own article"
				redirect_to root_path
			end
		end

end