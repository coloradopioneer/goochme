class AddGameFeatures < ActiveRecord::Migration
  def change
  	add_column :games, :Player1_id, :integer
  	add_column :games, :Player2_id, :integer
  	add_column :games, :winner, :string
  	add_column :games, :skunk, :boolean
  	add_column :games, :perfect_hand, :integer
  	add_column :games, :muggins_points, :integer
  	add_column :games, :misdeals, :integer
  end
end
