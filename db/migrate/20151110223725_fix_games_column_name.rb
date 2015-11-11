class FixGamesColumnName < ActiveRecord::Migration
  def change
  	rename_column :games, :type, :type_of_game
  end
end
