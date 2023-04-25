require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Mocca")
player2 = Player.new("Valentin")

puts "A ma droite #{player1.name}, le joueur invicible jusque là et à ma gauche #{player2.name} !"

while player1.points > 0 && player2.points > 0

puts "Voici l'état de nos joueurs :"
puts "#{player1.show_stats} #{player2.show_stats}"

puts "--------------- F I G H T ---------------"

puts player1.attacks(player2)
puts player2.attacks(player1)
    if player2.points <= 0
        puts "#{player2.name} LOOOOOOOSER !"
        break
    end
    puts ""
    if player1.points <= 0
        puts "#{player1.name} LOOOOOOOSER !"
        break
    end
end

#binding.pry