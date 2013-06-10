class TicTacToe

def initialize()
	@board_spot = {
				:a1 => "1", :a2 => "2", :a3 => "3",
				:b1 => "4", :b2 => "5", :b3 => "6",
				:c1 => "7", :c2 => "8", :c3 => "9" }

	@win = [
	  [:a1,:a2,:a3],
	  [:b1,:b2,:b3],
	  [:c1,:c2,:c3],
	  [:a1,:b1,:c1],
	  [:a2,:b2,:c2],
	  [:a3,:b3,:c3],
	  [:a1,:b2,:c3],
	  [:c1,:b2,:a3]
	]

	@user_1 = rand() > 0.5 ? 'X' : 'O'
	@user_2 = @user_1 == 'X' ? 'O' : 'X'

	@stored_key1 = []
	@stored_key2 = []

end # end initialize


def user_namechoice
	print "What is user one\'s name?"
	@user1_name = gets.chomp
	print "What is user two\'s name?"
	@user2_name = gets.chomp
end

def draw_board
	puts "#{@board_spot[:a1]}|#{@board_spot[:b1]}|#{@board_spot[:c1]}"
	puts "------"
	puts "#{@board_spot[:a2]}|#{@board_spot[:b2]}|#{@board_spot[:c2]}"
	puts "------"
	puts "#{@board_spot[:a3]}|#{@board_spot[:b3]}|#{@board_spot[:c3]}"
end

# def marker
# 	if(@user_1 == 'X')
# 		user_1_turn
# 	else
# 		user_2_turn
# 	end
# end

def user_1_turn
	puts "#{@user1_name} choose your spot"
	user1_choice = gets.chomp
	key_pos = @board_spot.key(user1_choice)
	@board_spot[key_pos]=@user_1
	@stored_key1 << key_pos
end

def user_2_turn
	puts "#{@user2_name} choose your spot"
	user2_choice = gets.chomp
	key_pos=@board_spot.key(user2_choice)
	@board_spot[key_pos]=@user_2
	@stored_key2 << key_pos
end

def win?

end


def tie?

end


end # end of class

game = TicTacToe.new
game.user_namechoice
game.draw_board

loop until 
game.user_1_turn
game.draw_board
game.user_2_turn
game.draw_board
game.user_1_turn
game.draw_board
game.user_2_turn
game.draw_board
game.user_1_turn
game.draw_board
game.user_2_turn
game.draw_board
game.user_1_turn
game.draw_board
game.user_2_turn
game.draw_board
game.user_1_turn
game.draw_board
game.user_2_turn
game.draw_board


p @board_spot.values.to_a