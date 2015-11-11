class GamesController < ApplicationController

	def new
		@game = Game.new
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

	private
		def game_params
			params.require(:game).permit(:type_of_game, :number)
		end

end