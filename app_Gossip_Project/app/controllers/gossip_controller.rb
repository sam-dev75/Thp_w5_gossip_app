class GossipController < ApplicationController 
    def show_gossip 
        @gossip=Gosssip.find(params["id"])
    end
end
