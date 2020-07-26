require 'csv'
require 'pry'

class Gossip
  attr_reader :author, :content, :gossip

  def initialize(author, content)
    @content = content
    @author = author
    @gossips = Array.new
  end
  
  def save
    @gossips << "#{@author} , #{@content}"
    File.open("db/gossip.csv", "ab") do |gossip|
      gossip.puts(@gossips)
    end
    puts "Les gossips sont exportés en CSV"
  end

  def self.all
    all_gossips = Array.new
    CSV.foreach("db/gossip.csv", "r") do |row|
      all_gossips << Gossip.new(row[0], row[1])
    end
    return all_gossips
  end

  def self.modify_csv(new_content)
		File.open("db/gossip.csv","w") do |file|
			new_content.each {|gossip| file.puts gossip.author + "," + gossip.content}
		end
	end
end
