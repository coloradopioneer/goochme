require 'test_helper'

class GameTest < ActiveSupport::TestCase

	def setup
		@game = Game.new(type_of_game: "cribbage", number: "1")
	end

	test "game should be valid" do
		assert @game.valid?
	end

	test "type of game should be present" do
		@game.type_of_game = " "
		assert_not @game.valid?
	end

	test "type of game should not be too long" do
		@game.type_of_game = "a" * 20
		assert_not @game.valid?
	end

	test "type of game should not be too short" do
		@game.type_of_game = "a" * 2
		assert_not @game.valid?
	end

	test "number should be 1 character" do
		@game.type_of_game = "aa"
		assert_not @game.valid?
	end

end