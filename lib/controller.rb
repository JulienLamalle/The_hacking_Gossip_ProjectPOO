require 'gossip'
require 'view'
require 'pry'

class Controller
  attr_reader :all_gossips

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    @gossip = Gossip.new(params.values.first, params.values.last)
    @gossip.save
  end

  def index_gossips
    @view.index_gossips(Gossip.all)
  end

  def delete_gossip
		Gossip.modify_csv(@view.delete_gossip(Gossip.all))
	end
end