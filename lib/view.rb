require 'gossip'
require 'pry'


class View
  
  def create_gossip 
    puts "Quel est le nom de l'auteur de ce gossip ?"
    response_author = gets.chomp.to_s
    puts "Quel est ton gossip ?"
    response_content = gets.chomp.to_s
    { 'author' => response_author , 'content' =>  response_content }
  end

  def index_gossips(array_of_gossips)
    i = 1
    array_of_gossips.each do |line|
      puts "#{i}) #{line.author} , #{line.content}"
      i += 1
    end
  end

  def delete_gossip(array_of_gossips)
    user_choice = 0
    while (user_choice < 0 || user_choice > array_of_gossips.length) do 
      puts "Quel est le numéro du potins que vous souhaitez supprimer ?"
      print "> "
    end
    user_choice = gets.chomp.to_i
    user_choice = user_choice - 1
    array_of_gossips.delete_at(user_choice)
    return array_of_gossips
  end
end



