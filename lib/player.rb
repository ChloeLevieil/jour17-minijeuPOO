class Player
    attr_accessor :name, :points

    def initialize(name)
        @name = name
        @points = 10
    end

    def show_stats
        puts "#{self.name} a #{self.points} points de vie"
    end

    def gets_damage(number)
        @points -= number
        if @points <= 0
            puts "#{self.name}, tu es game over !"
        end
    end

    def attacks(player)
        puts "Le joueur #{self.name} attaque le joueur #{player.name}"
        damage = compute_damage
        puts "#{player.name} a perdu #{damage} points de vie"
        player.gets_damage(damage)
    end

    def compute_damage
        return rand(1..6)
    end
end