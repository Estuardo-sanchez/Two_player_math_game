require './player'
require './question'

class Game

  player1 = Player.new("Player 1")
  player2 = Player.new("Player 2")
  question = Questions.new()

  play = true;
  player_turn = player1
  while play do 
  puts"|-----NEW-TURN-----|"
  puts "#{player_turn.place_name}:"
  puts ("#{question.test_question}")
  print ">"
  answer = gets.chomp.to_i

  if question.checkAnswer(answer)
    puts "#{player_turn.place_name}: YES! You are correct!"
  else 
    puts "#{player_turn.place_name}: Seriously? No!"
    player_turn.lives_loss
  end

  if player_turn.score == 0
    break
  end
  puts "P1: #{player1.score}/3 Vs. P2: #{player2.score}/3"

  if player_turn == player1
    player_turn = player2
  elsif 
    player_turn == player2
    player_turn = player1
  end

  end

  if player1.score == 0
    puts "#{player2.place_name} wins! with a score of #{player2.score}/3"
    puts"|-----GAME-OVER-----|"
    puts "Good bye!"
  else 
    puts "#{player1.place_name} wins! with a score of #{player1.score}/3"
    puts"|-----GAME-OVER-----|"
    puts "Good bye!"
  end
end