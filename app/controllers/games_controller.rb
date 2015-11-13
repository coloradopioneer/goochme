class GamesController < ApplicationController

	def index
		@games = Game.all
	end

	def new
		@game = Game.new
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		@game = Game.find(params[:id])
		if @game.update(game_params)
			flash[:notice] = "Game was successfully updated."
			redirect_to game_path(@game)
		else
			render 'edit'
		end
	end

	def create
		@game = Game.new(game_params)
		if @game.save
			flash[:notice] = "The game was created, you're welcome..."
			redirect_to game_path(@game)
		else
			render 'new'
		end
	end

	def show
		@game = Game.find(params[:id])
	end

	def destroy
		@game = Game.find(params[:id])
		@game.destroy
		flash[:notice] = "Game was successfully deleted."
		redirect_to games_path
	end

	private
		def game_params
			params.require(:game).permit(:type_of_game, :number)
		end

end