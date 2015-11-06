class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :type
    	t.integer :number
    	t.timestamps
    end
  end
end
