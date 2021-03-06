 class Game < ActiveRecord::Base
	belongs_to :user
	validates :type_of_game, presence: :true, length: { minimum: 3, maximum: 19 }
	validates :number, presence: :true, length: { minimum: 1, maximum: 1 }
	validates :user_id, presence: true
end