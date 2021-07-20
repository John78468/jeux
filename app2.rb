require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

puts " "
puts ' -------------------------------------------------'
puts " | Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts " | Le but du jeu est d'etre le dernier survivant !|"
puts " -------------------------------------------------"
puts " "

puts "Quel est ton nom ?"
print ">"

user = HumanPlayer.new(gets.chomp)

enemies = []
enemies << player1 = Player.new("Paul")
enemies << player2 = Player.new("Bernard") 
player1= enemies[0]
player2 = enemies[1]

while user.life_points > 0 && (player1.life_points > 0 && player2.life_points > 0)
    
user.show_state
break if((player1.life_points == 0 and player2.life_points == 0) or user.life_points == 0)
end


#binding.pry