class Player
    attr_accessor :name, :life_points
    def initialize(name)
        @name = name
        @life_points = 10
    end

    def show_stats
        "#{name} a #{life_points} points de vie "
    end

    def gets_damage(value)
        @life_points = @life_points - value
        if  life_points <= 0
            puts"#{name} est mort"
        else
           puts show_stats
        end
    end

    def attacks(a =[])###<= : Methode qui permet a un user d'attaquer un autre user et de lui infliger des dégats
    puts "le joueur #{self.name} attaque le joueur #{a.name} et lui inflige #{dmg = compute_damage} dégats."
    a.gets_damage(dmg)
    end

    def compute_damage
        return rand(1..6)
    end
end