require 'controller'
require 'pry'

class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true
      puts "Que veux tu faire ?"
      puts "Tape 1 pour créer un gossip"
      puts "Tape 2 pour afficher tout les potins"
      puts "Tape 3 pour supprimer un potin"
      puts "Tape 4 pour quitter l'application"
      user_choice = gets.chomp.to_i

      case user_choice
      when 1
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip

      when 2
        puts "Tu as choisi de lire tout les gossips"
        @controller.index_gossips

      when 3
        puts "Tu as choisi de supprimer quel potins ?"
        @controller.delete_gossip

      when 4 
        puts "À bientôt !"
        break

      else
        puts "Merci de choisir une valeur d'entrée existante, veuillez rééssayer"
      end
    end
  end
end

